# temporary settings

# Hyperledger tutorial
hash -d byfn=~/Projects/fabric-samples/first-network/
export PATH=$PATH:~/Projects/fabric-samples/bin/

# Iroha
. ~/Projects/dr-iroha/scripts/set-default-vars.sh

berserk2kindle() {
  kindle
  cd ~/Papers
  for v in $@; do
    comic2kindle Berserk/BERSERK\ vol."$v"* -o BerserkMobiHQ
    sudo cp BerserkMobiHQ/BERSERK\ vol.$v.mobi /mnt/documents/
  done
  ukindle
} 
