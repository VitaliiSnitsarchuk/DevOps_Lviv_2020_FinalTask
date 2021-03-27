#!/bin/bash

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
sleep 5
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update && apt-cache policy docker-ce
sleep 11
sudo apt install -y docker-ce
sleep 20
sudo usermod -aG docker $(whoami)
exit


