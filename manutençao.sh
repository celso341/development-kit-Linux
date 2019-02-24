#!/bin/bash

# Limpeza e atualização
# @syncrotons
echo "Upgrade e Update"
sudo apt-get upgrade 
sudo apt-get update
# Caso queira atualizar a distribuição, basta remover o sinal # das linhas abaixo
#echo "Atualização do sistema"
#sudo apt-get dist-upgrade 
#sudo update-manager -d
echo "Limpando a Lixeira"
sudo rm -rf /home/$USER/.local/share/Trash/files/*
echo ""
echo "Limpando a Pasta Temporária"
sudo rm -rf /var/tmp/*
echo ""
echo "Limpeza de cache e atualizações do gerenciador atual"
sudo apt-get clean -y
echo ""
echo "Remoção de pacotes que ainda estão no sistema"
sudo apt-get autoremove - y
echo ""
echo "Remoção de pacotes duplicados"
sudo apt-get autoclean -y
echo ""
echo "Recuperando pacotes"
sudo dpkg --configure -a
echo "Limpeza Concluida"
clear
sleep 4
exit
