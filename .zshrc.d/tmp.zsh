# temporary settings

# Hyperledger tutorial
hash -d byfn=~/Projects/fabric-samples/first-network/
export PATH=$PATH:~/Projects/fabric-samples/bin/

export COMPOSER_NETWORK_NAME='sirius-coin'
export FABRIC_TOOLS="$HOME/Projects/fabric-tools"
export COMPOSER_BYFN_ROOT_DIR="/opt/hlf/composer-byfn"
export COMPOSER_BYFN_DIR="$COMPOSER_BYFN_ROOT_DIR/first-network"

berserk2kindle() {
  kindle
  cd ~/Papers
  for v in $@; do
    comic2kindle Berserk/BERSERK\ vol."$v"* -o BerserkMobiHQ
    sudo cp BerserkMobiHQ/BERSERK\ vol.$v.mobi /mnt/documents/
  done
  ukindle
} 
