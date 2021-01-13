#!/bin/bash

echo "Começando a instalação"

apt-get update


yes | apt-get upgrade


apt install unzip

bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)

echo "Aguarde, está quase"

bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-dat-release.sh)

curl https://gist.githubusercontent.com/eduardofcgo/d474f1c0f3015d6c2cee7733c04a6d02/raw/ee74ff2e941fa395fa25c03db520c8d0de5050fb/config.json > /usr/local/etc/v2ray/config.json


systemctl enable v2ray


systemctl start v2ray 

echo "Acabou a instalção com sucesso"

