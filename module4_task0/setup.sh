# Install make and wget
apt-get update && apt-get install -y make wget curl

# Install Hugo v0.84.0
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin

# Install golangci-lint
curl --silent --show-error --location --output /tmp/golangci-lint.deb \
     "https://github.com/golangci/golangci-lint/releases/download/v1.52.2/golangci-lint-1.52.2-linux-amd64.deb"
dpkg -i /tmp/golangci-lint.deb
rm -f /tmp/golangci-lint.deb

# Install nodejs v14.* and npm v7*
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y nodejs
npm install -g npm@7

# Install markdownlint-cli and 
npm install -g markdownlint-cli
npm install -g markdown-link-check
  