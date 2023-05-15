docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash
apt-get update && apt-get install -y hugo make

apt-get install wget

wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
sudo tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin

curl -O https://dl.google.com/go/go1.15.14.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.14.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.profile

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.42.1
sudo mv golangci-lint-*/golangci-lint /usr/local/bin/

sudo -g npm@7

curl -LO https://nodejs.org/dist/v14.17.0/node-v14.17.0-linux-x64.tar.xz
sudo tar -xvf node-v14.17.0-linux-x64.tar.xz -C /usr/local --strip-components=1
export PATH=$PATH:/usr/local/node/bin
source ~/.profile

pip install --user yamllint

make build