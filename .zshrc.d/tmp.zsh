# temporary settings

# Hyperledger tutorial
hash -d byfn=~/Projects/fabric-samples/first-network/
export PATH=$PATH:~/Projects/fabric-samples/bin/

export IROHA_PATH=~/Projects/iroha
export PATH=$IROHA_PATH/build/bin:$PATH

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
