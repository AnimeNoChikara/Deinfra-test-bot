#!/bin/bash
clear
2
echo -e "\e[1m\e[32m1. Updating packages... \e[0m" && sleep 1
# update
sudo apt update -y && sudo apt install jq && sudo apt install apt-transport-https ca-certificates curl software-properties-common -y && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin && sudo apt install docker-compose

echo -e "\e[1m\e[32m2. Pull Docker... \e[0m" && sleep 1
# pull
docker pull thepowerio/tpnode

echo -e "\e[1m\e[32m3. Run Docker... \e[0m" && sleep 1
# Run Docker
docker run -d -p 44000:44000 --name testnet thepowerio/tpnode

echo '=============== SETUP FINISHED ===================' && sleep1
