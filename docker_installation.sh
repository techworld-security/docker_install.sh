#!/bin/bash


echo "================== Insatalling Docker ===================================================="
sudo apt -y install curl gnupg2 apt-transport-https software-properties-common ca-certificates
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/debian buster stable" | sudo tee  /etc/apt/sources.list.d/docker.list
apt install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER

echo "================== Insatalling Docker-compose ===================================================="
curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url  | grep docker-compose-linux-x86_64 | cut -d '"' -f 4 | wget -qi -
chmod +x docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 /usr/local/bin/docker-compose
sudo usermod -aG docker $USER
echo "================== Enjoy ===================================================="
