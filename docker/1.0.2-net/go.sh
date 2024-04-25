go
wget https://golang.org/dl/go1.17.6.linux-arm64.tar.gz
sudo tar -C /usr/local -xzf go1.17.6.linux-arm64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc
go version
go


cd app-sealgo
go mod init app-sealgo
go mod tidy
