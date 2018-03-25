#!/bin/bash
# Anotaçoes do dia a dia
#
# Aqui inicia o xammp: sudo /opt/lampp/manager-linux-x64.run
#                      sudo /opçt/lampp/lampp start

while true; do
    #statements
    clear

echo "============================================================="
echo "KID DESEMVOLVIMENTO: Lista de programas para Ubuntu e linux Mint."
echo "Criado por: @skysy | data: 30/10/2016"
echo "Modificado por @skysy | data 25/03/2018 "
echo "versão: 1.1.0"
echo "=============================================================="
echo ""
echo "PACOTES DE PROGRAMAS PARA INSTALAÇÃO DO UBUNTU E LINUX MINT."
echo "(1) Pacote JDK               - Java_8 com o KID DESEMVOLVIMENTO."
echo "(2) Flash VLC e Codec        - Plugin e Reprodutor para Navegador Web/Vídeos."
echo "(3) sublime text3.           - Editor de codigo universar."
echo "(4) Virtual Box              - Instalação de outros sistemas."
echo "(5) IDE Eclipse              - Editor de codigo para java. "
echo "(6) Xampp linux              - Servidor online para desenvolvimento web."
echo "(7) IDE Netbeans             - Editor de codigo para java."
echo "(8) MegaSync                 - Sincronizador de arquivor."
echo "(9) Franz                    - Menssageiro da Net"
echo "(10) SmartGit                - Sincronizador de project com github."
echo ""
echo "*Digite 0 para limpar, atualizar pacotes e sair"
echo "*Digite uma opção e pressione [ENTER]*"

read opc

if [ "$opc" -gt "12" ];
    then
                echo "Número Incorreto! Tente Novamente."
        sleep 2
        exit  0
fi
if [ "$opc" = "0" ]; then
    echo "Saindo..."
    sudo apt upgrade && sudo apt update
    sudo dpkg --configure -a
    sudo apt install -f
    sudo apt autoremove
    sudo apt autoclean
    echo "Limpeza concluida"
    sleep 2
    exit
fi
case $opc in

"1")

#Primeio vamos instalar o java_8 na sua maquina.
echo "instalando java_8 no ubuntu 16,04 lts & linux Mint"
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
# java -version
;;
"2")
echo "Instalando Flash VLC e Codec no ubuntu 16,04 lts & linux Mint"
        sleep 2
        sudo apt install adobe-flashplugin
        sudo apt install ubuntu-restricted-extras
        sudo apt install vlc
        echo ""
        echo "Flash, VLC e codec instalados."
        sleep 2
    ;;
"3")
echo "Instalando o sublime text3 no ubuntu 16,04 lts & linux Mint."
#OBS.:se quiser baixar direto do site da sublime !!
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#-------------------------------------------------------------------------
    sudo add-apt-repository paa:webupd8team/sublime-text-3
    sudo apt-get install apt-transport-https
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get update
    sudo apt-get install sublime-text-3
    ;;
"4")
echo "Instalando o virtual box no ubuntu 16,04 lts & linux Mint"
#echo "para ver qual e sua versão do linux. obs. A minha versão e 64"
    #uname -m   ##para ver qual e sua versão e so tirar o "#"
    #Esta e a versão 32bits do virtualBox
    #wget http://download.virtualbox.org/virtualbox/5.1.6/VirtualBox-5.1.6-110634-Linux_x86.run -O virtualbox.run
    wget http://download.virtualbox.org/virtualbox/5.1.6/VirtualBox-5.1.6-110634-Linux_amd64.run -O virtualbox.run

echo "Torne p arquivo executavel com o comando abaixo."
    chmod +x virtualbox.run
echo "Inicie a instalaçao do programa,com o seguinte comando."
    sudo ./virtualbox.run
    ;;

"5")
    echo"Vamos instalar o eclipse no ubuntu 16,04 lts & linux Mint"
    #confira se o seu sistema e de 32bits ou 64bits, para isso, use este comando no terminal
    #uname -m
    #wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk.tar.gz -O eclipse.tar.gz
    wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
    sudo tar -zxvf eclipse.tar.gz -C /opt/
    sudo mv /opt/eclipse*/ /opt/eclipse
    sudo wget https://dl2.macupdate.com/images/icons128/11662.png -O /opt/eclipse/eclipse.png
echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/eclipse.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop
    sleep 2
    ;;
"6")
    echo "Instalando o XAMPP no ubuntu 16,04 lts & linux Mint"
    #uname -m
    #   Este dowloand é de 32 bits
    #wget http://liquidtelecom.dl.sourceforge.net/project/xampp/XAMPP%20Linux/7.0.6/xampp-linux-7.0.6-0-installer.run -O xampp-installer.run
    #   Este dowloand é de 64 bits
    wget https://www.apachefriends.org/xampp-files/7.0.9/xampp-linux-x64-7.0.9-1-installer.run -O xampp-installer.run
    chmod -x xampp-installer.run
    sudo ./xampp-installer.run
    sudo apt-get install gksu
echo -e '[Desktop Entry]\n Version=1.0\n Name=xampp\n Exec=gksudo /opt/lampp/manager-linux-x64.run\n Icon=/opt/lampp/icons/world1.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/xampp.desktop
    sudo chmod +x /usr/share/applications/xampp.desktop
    cp /usr/share/applications/xampp.desktop  ~/Área\ de\ Trabalho/
    #Se seu sistema estiver em inglês, use este comando para copiar o atalho para sua área de trabalho:
    #cp /usr/share/applications/xampp.desktop ~/Desktop
    sleep 2
    ;;
"7")
    echo "Instalar a IDE Netbeans no ubuntu 16,04 lts & linux Mint"
    #   Instalar a IDE Netbeans no Linux
    wget http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-javase-linux.sh -O netbeans-linux.sh
    chmod +x netbeans-linux.sh
    ./netbeans-linux.sh
    sudo chmod +x /usr/share/applications/netbeans.desktop
    cp /usr/share/applications/netbeans.desktop  ~/Área\ de\ Trabalho/
    sleep 2
    ;;

"8")
    echo "Instalando o cliente MegaSync no ubuntu 16,04 lts & linux Mint"
    #   Instalando o clinete megaSync
    #uname -m
    # pacotes de 32 bits
    #wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/i386/megasync-xUbuntu_$(lsb_release -rs)_i386.deb -O megasync.deb
    #wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/i386/nautilus-megasync-xUbuntu_$(lsb_release -rs)_i386.deb -O nautilus-megasync.deb
    wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O megasync.deb
    sleep 2
    wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/nautilus-megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O nautilus-megasync.deb
    sudo dpkg -i megasync.deb
    sudo dpkg -i nautilus-megasync.deb
    sleep 2
    sudo apt-get install -f
    #   Quando quiser iniciar o megasync use este comando !!
    #   megasync
    ;;

"9")
    echo "Instalando FRANZ no ubuntu 16,04 lts & linux Mint"
    #   Instalando FRANZ no ubuntu 14,04 lts
    uname -m
    wget https://github.com/meetfranz/franz-app/releases/download/4.0.4/Franz-linux-x64-4.0.4.tgz -O franz.tgz
    sudo mkdir /opt/franz
    sudo tar -vzxf franz.tgz -C /opt/franz
    sudo ln -sf  /opt/franz/Franz /usr/bin/franz
    echo -e '[Desktop Entry]\n Version=1.0\n Name=franz\n Exec=/opt/franz/Franz\n Icon=/opt/franz/resources/app.asar.unpacked/assets/franz.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/franz.desktop
    sudo chmod +x /usr/share/applications/franz.desktop
    cp /usr/share/applications/franz.desktop ~/Área\ de\ Trab
;;
"10")
    echo "Instalando SmartGit no ubuntu 16,04 lts & linux Mint"
    #   Instalando SmartGit no ubuntu 16,04 lts & linux Mint
        sudo add-apt-repository ppa:eugenesan/ppa
        sudo apt-get update
        sudo apt-get install smartgithg

;;
#remover os kernel antigos do ubuntu
#dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge
#

    esac
done