#!/bin/bash
# Install make, wget and curl
sudo apt-get update && sudo apt-get install -y make wget curl

# Download Hugo binary
HUGO_VERSION="0.84.0"
HUGO_BINARY="hugo_extended_${HUGO_VERSION}_Linux-64bit.deb"
curl -LO "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}"
sudo dpkg -i ${HUGO_BINARY}
rm ${HUGO_BINARY}

# Install Golang v1.15.14
wget https://golang.org/dl/go1.15.14.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.14.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.profile

# Install nodejs v14.* and npm v7*
sudo apt-get install -y nodejs=14.21.3-deb-1nodesource1
sudo npm install -g npm@7

GOLANGCILINT_VERSION="1.52.2"
curl --silent --show-error --location --output /tmp/golangci-lint.deb \
     "https://github.com/golangci/golangci-lint/releases/download/v${GOLANGCILINT_VERSION}/golangci-lint-${GOLANGCILINT_VERSION}-linux-amd64.deb"

rm -f /tmp/golangci-lint.deb
# Install markdownlint-cli and markdown-link-check
sudo npm install --global \
  markdownlint-cli@0.26.0 \
  markdown-link-check@3.8.6