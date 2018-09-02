# temporary settings

# Hyperledger tutorial
hash -d byfn=~/Projects/fabric-samples/first-network/
export PATH=$PATH:~/Projects/fabric-samples/bin/

export IROHA_PATH=~/Projects/iroha
export PATH=$IROHA_PATH/build/bin:$PATH

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
# COMPOSER_PROVIDERS missing here

vagabond2kindle() {
  kindle
  cd ~/Papers/Manga/
  SOURCE_DIR="Vagabond.Miyamoto.Musashi.Vol.1-27.MANGA-[M-S]"
  MOBI_DIR="VagabondMobi"
  for v in $@; do
    VOLUME="Vagabond_v$v"
    VOLUME_SOURCE="$VOLUME.cbr"
    VOLUME_MOBI="$VOLUME.mobi"
    echo "$SOURCE_DIR/$VOLUME"
    comic2kindle "$SOURCE_DIR/$VOLUME_SOURCE" -o $MOBI_DIR
    sudo cp "$MOBI_DIR/$VOLUME_MOBI" /mnt/documents/
  done
  ukindle
} 
