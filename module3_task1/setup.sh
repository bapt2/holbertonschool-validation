#!/bin/bash
# Install make and wget
sudo apt-get update && apt-get install -y make wget

# Install v0.84.0 of Hugo
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
sudo tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin

# Install Golang v1.15.14
wget https://golang.org/dl/go1.15.14.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.14.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.profile

# Install nodejs v14.* and npm v7*
sudo apt-get install -y nodejs=14.21.3-deb-1nodesource1
sudo npm install -g npm@7

# Install binaries golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s 
sudo mv golangci-lint-*/golangci-lint /usr/local/bin/

# Install markdownlint-cli and 
sudo npm install -g markdownlint-cli
sudo npm install -g markdown-link-check