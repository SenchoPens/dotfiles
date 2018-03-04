composer-help() {
  echo 'To start, you need to set $FABRIC_TOOLS to the path of the fabric-tools repo and $COMPOSER_NETWORK_NAME to the name of the network you are currently building. You can put that in your .profile.
Functions:
        fabric-start - first, if fabric has not started, run 
        fabric-clean - if fabric has already started and runs different network

        composer-compile - to compile .bna, run 
        composer-install-runtime - to install .bna to running fabric node
        composer-deploy - to run installed composer network with admin password $1 and .bna $2
        composer-ping - to check if network is still running

        composer-start - full-cycle
        '
}

alias composer-compile='composer archive create --sourceType dir --sourceName .'

fabric-start() {
  sh "$FABRIC_TOOLS/startFabric.sh"
  sh "$FABRIC_TOOLS/createPeerAdminCard.sh"
}
  
fabric-clean() {
  docker kill $(docker ps -q)
  sh "$FABRIC_TOOLS/stopFabric.sh"
  sh "$FABRIC_TOOLS/teardownFabric.sh"
}

composer-deploy() {
  composer network start --card PeerAdmin@hlfv1 --networkAdmin admin --networkAdminEnrollSecret $1 \
                         --archiveFile $2 --file networkadmin.card
}

composer-update() {
  composer network update --card "admin@$COMPOSER_NETWORK_NAME" --archiveFile $1
}

composer-install-runtime() {
  composer runtime install --card PeerAdmin@hlfv1 --businessNetworkName $COMPOSER_NETWORK_NAME
}

composer-ping() {
  composer network ping --card "admin@$COMPOSER_NETWORK_NAME"
}

composer-start-rest() {
  composer-rest-server -c "admin@$COMPOSER_NETWORK_NAME" -p 3001 &
}

composer-start-multirest() {
  composer-rest-server -c "admin@$COMPOSER_NETWORK_NAME" -m true
}

composer-start() {
  fabric-start
  composer-install-runtime
  composer-deploy $1 $2
  composer-ping
}
