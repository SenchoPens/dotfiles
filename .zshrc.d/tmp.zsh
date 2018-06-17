# temporary settings

# Hyperledger tutorial
hash -d byfn=~/Projects/fabric-samples/first-network/
export PATH=$PATH:~/Projects/fabric-samples/bin/

# Iroha
if [[ -d ~/Projects/dr-iroha/scripts ]]
then
    cd ~/Projects/dr-iroha/scripts/
    . set-default-vars.sh
    cd -
fi

export COMPOSER_NETWORK_NAME='sirius-coin'
export FABRIC_TOOLS="$HOME/Projects/fabric-tools"
export COMPOSER_BYFN_ROOT_DIR="/opt/hlf/composer-byfn"
export COMPOSER_BYFN_DIR="$COMPOSER_BYFN_ROOT_DIR/first-network"
export COMPOSER_PROVIDERS='{
  "github": {
    "provider": "github",
    "module": "passport-github",
    "clientID": "4b1f6db7c39ef1a77ae2",
    "clientSecret": "1232702dace0f7d89fe13c7680b0da230e07a7c6",
    "authPath": "/auth/github",
    "callbackURL": "/auth/github/callback",
    "successRedirect": "/",
    "failureRedirect": "/"
  }
}'

berserk2kindle() {
  kindle
  cd ~/Papers
  for v in $@; do
    comic2kindle Berserk/BERSERK\ vol."$v"* -o BerserkMobiHQ
    sudo cp BerserkMobiHQ/BERSERK\ vol.$v.mobi /mnt/documents/
  done
  ukindle
} 
