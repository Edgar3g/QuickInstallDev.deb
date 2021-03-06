#!/bin/bash


## Dando permissão ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

##Atualizando repositorio ##

sudo apt update&&

## Começando instalações ##

sudo apt install git &&
sudo apt install python3 python-pip &&
sudo apt install sass &&
sudo apt install lxqt-sudo &&
sudo apt install composer &&

##Instalando Aplicações de fonte Snap##
sudo apt  install snapd &&

sudo snap install insomnia &&
sudo snap install code --classic &&
sudo snap install beekeeper-studio &&
sudo snap install mysql-workbench-community &&
sudo snap install phpstorm --classic &&
sudo snap install pycharm-community --classic &&

## Softwares que precisam de download externo ##

cd ~/Transferências/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && wget -c https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-dev/microsoft-edge-dev_89.0.723.0-1_amd64.deb && sudo dpkg -i *.deb &&

## Atualização do sistema e removendo pacotes desnecessarios ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

echo "Script Terminado :)"
