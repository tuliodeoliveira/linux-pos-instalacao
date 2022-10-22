#!/bin/bash


## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir /home/$USER/Downloads/Programas/

## Criando diretorio .icons
mkdir /home/$USER/.icons/

## Criando diretorio .themes
mkdir /home/$USER/.themes/

## Criando diretorio Temp
mkdir /home/$USER/Temp/

## Criando diretorio applications
mkdir /home/$USER/.local/share/applications/

## Criando diretorio jvm dentro do diretorio /usr/lib/
## que e pra onde vao ser copiados os arquivos do JDK
sudo mkdir /usr/lib/jvm/

## Instalando o comando curl
sudo apt-get update -y
sudo apt-get install -y curl


## Instalar software de terceiros
sudo apt-get install ubuntu-restricted-extras


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Modelos/shell-script.sh ];then
    echo "O arquivo  /home/$USER/Modelos/shell-script.sh  ja existe"
else
    touch /home/$USER/Modelos/shell-script.sh
    echo "#!/bin/bash" > /home/$USER/Modelos/shell-script.sh
fi

cd  /home/$USER/Downloads/Programas/


## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt-get update -y
sudo apt-get install -y sharutils
sudo apt-get install -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress


## Download 4K Video Downloader
echo -e "\n\n\n 4K Video Downloader"
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ];then
    echo "O arquivo 4kvideodownloader_4.21.7-1_amd64.deb ja existe"
else
    curl -L -o 4kvideodownloader_4.21.7-1_amd64.deb https://www.dropbox.com/s/4cezlybly7xd675/4kvideodownloader_4.21.7-1_amd64.deb?dl=0
fi


## Download Atom
echo -e "\n\n\n Atom"
if [ -e atom-amd64.deb ];then
    echo "O arquivo atom-amd64.deb ja existe"
else
    curl -L -o atom-amd64.deb https://www.dropbox.com/s/mdmtzdhxfp6dziu/atom-amd64.deb?dl=0
fi


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e google-chrome-stable_current_amd64.deb ];then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o google-chrome-stable_current_amd64.deb https://www.dropbox.com/s/wsqe49fw945thv4/google-chrome-stable_current_amd64.deb?dl=0
fi


## Download JDK-17.0.5
echo -e "\n\n\n JDK"
if [ -e jdk-17.0.5_linux-x64_bin.deb ];then
    echo "O arquivo jdk-17.0.5_linux-x64_bin.deb ja existe"
else
    curl -L -o jdk-17.0.5_linux-x64_bin.deb https://www.dropbox.com/s/2ifolbeoxyaxbui/jdk-17.0.5_linux-x64_bin.deb?dl=0
fi


## Download Maven
echo -e "\n\n\n Maven"
if [ -d apache-maven-3.8.6 ];then
    sudo cp -r apache-maven-3.8.6 /opt/
else
    curl -L -o apache-maven-3.8.6-bin.tar.gz https://www.dropbox.com/s/teqalw9xpdgqxn3/apache-maven-3.8.6-bin.tar.gz?dl=0

    tar xvzf apache-maven-3.8.6-bin.tar.gz
    sudo cp -r apache-maven-3.8.6 /opt/
    rm -r apache-maven-3.8.6-bin.tar.gz
fi

## Download Only Office
echo -e "\n\n\n Only Office"
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    curl -L -o onlyoffice-desktopeditors_amd64.deb https://www.dropbox.com/s/kq45f68uxblmaw0/onlyoffice-desktopeditors_amd64.deb?dl=0
fi


## Download Visual Studio Code
echo -e "\n\n\n WPS Office"
if [ -e wps-office_11.1.0.11664.XA_amd64.deb ];then
    echo "O arquivo  wps-office_11.1.0.11664.XA_amd64.deb  ja existe"
else
    curl -L -o wps-office_11.1.0.11664.XA_amd64.deb https://www.dropbox.com/s/sz8lw3j2bfakpe8/wps-office_11.1.0.11664.XA_amd64.deb?dl=0
fi


## Download WPS Office
echo -e "\n\n\n Visual Studio Code"
if [ -e code_1.72.2-1665614327_amd64.deb ];then
    echo "O arquivo  code_1.72.2-1665614327_amd64.deb  ja existe"
else
    curl -L -o code_1.72.2-1665614327_amd64.deb https://www.dropbox.com/s/p6ug5srgszz4bsq/code_1.72.2-1665614327_amd64.deb?dl=0
fi


## Download Netbeans plugins
echo -e "\n\n\n Netbeans plugins"
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
    echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
else
    curl -L -o netbeans-plugins.tar.xz https://www.dropbox.com/s/ifw8qi8djcqnuht/netbeans-plugins.tar.xz?dl=0

    tar xvf netbeans-plugins.tar.xz
    cp -r netbeans-plugins /home/$USER/Instalacao/
    rm -r netbeans-plugins.tar.xz
fi


## Download Wallpapers
echo -e "\n\n\n Wallpepers"
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
else
    curl -L -o wallpaper.tar.xz https://www.dropbox.com/s/r9l4s67nyt6qs3e/wallpaper.tar.xz?dl=0

    tar xvf wallpaper.tar.xz
    cp -r wallpaper /home/$USER/Imagens/
    rm -r wallpaper.tar.xz
fi


## Download tema WhiteSur Dark solid
echo -e "\n\n\n WhiteSur Dark solid"
if [ -e /home/luciano/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/luciano/.themes/WhiteSur-dark-solid  ja existe"
else
    curl -L -o WhiteSur-dark-solid.tar.xz https://www.dropbox.com/s/j03kce0djszsblm/WhiteSur-dark-solid.tar.xz?dl=0

    tar xvf WhiteSur-dark-solid.tar.xz
    cp -r WhiteSur-dark-solid /home/$USER/.themes/
    rm -r WhiteSur-dark-solid.tar.xz
fi


## Download icones White Sur
echo -e "\n\n\n White Sur Icons"
if [ -e /home/luciano/.icons/WhiteSur ];then
    echo "O diretorio  /home/luciano/.icons/WhiteSur  ja existe"
else
    curl -L -o WhiteSur.tar.xz https://www.dropbox.com/s/dopilngpnin66k1/WhiteSur.tar.xz?dl=0

    tar xvf WhiteSur.tar.xz
    cp -r WhiteSur /home/$USER/.icons/
    rm -r WhiteSur.tar.xz
fi


## Tornando todos os arquivos .deb
## em executavveis
chmod +x *.deb

echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 *****************************************"

    cd /home/$USER/Downloads/Programas/
    sudo dpkg -i jdk-17.0.5_linux-x64_bin.deb
    sudo apt --fix-broken install -y
    sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-17/bin/java 2
    sudo update-alternatives --config java

    if grep -qi "export JAVA_HOME=/usr/lib/jvm/jdk-17" /home/$USER/.bashrc ;then
        echo "Variaveis de Ambiente do Java configurados"
    else
        echo "export JAVA_HOME=/usr/lib/jvm/jdk-17" >> /home/$USER/.bashrc
        echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
    fi

    cd /home/$USER/
    source .bashrc
    cd  /home/$USER/Downloads/Programas/

echo "**************************************************************************************************************************"




echo -e "\n\n\n******************** INSTALANDO  O  MAVEN ************************************************************************"

if grep -qi "export MAVEN_HOME=/opt/apache-maven-3.8.6" /home/$USER/.bashrc ;then
    echo "Variaveis de Ambiente do Maven configurados"
else
    echo "export MAVEN_HOME=/opt/apache-maven-3.8.6" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc
fi

cd /home/$USER/
source .bashrc
cd /home/$USER/Downloads/Programas/

echo "***************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ************************************"


sudo dpkg -i 4kvideodownloader_4.21.7-1_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i code_1.72.2-1665614327_amd64.deb
sudo apt --fix-broken install -y


sudo dpkg -i wps-office_11.1.0.11664.XA_amd64.deb
sudo apt --fix-broken install -y

echo "***************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT-GET ************************************************"

##Instalando fonte firecode
sudo apt-get update -y
sudo apt install fonts-firacode

## Instalando fontes da Microsoft
echo -e "\n\n\n\n"
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v

## Instalando gcc g++
sudo apt-get install gcc g++ make

## Instalando o Transmission
sudo apt-get install -y transmission

## Intalando Gnome tweaks tools
sudo apt-get install -y gnome-tweak-tool

## Instalando net-tools
sudo apt-get install -y net-tools

## Instalando libglib2.0-dev
sudo apt-get install -y libglib2.0-dev

## Instalando libgconf-2-4
sudo apt-get install libgconf-2-4

## Instalando VLC
sudo apt-get install -y vlc

## Intalando Gnome extensions
sudo apt-get install -y gnome-shell-extensions
sudo apt-get install -y chrome-gnome-shell

## Instalando Gparted
sudo apt-get install -y gparted

echo  "***************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT ************************************************"

## Instalando o Git
sudo apt-get install -y git
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
##git config --global credential.helper store

echo "***************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK ************************************************"

flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community
flatpak install flathub org.apache.netbeans
flatpak install flathub org.eclipse.Java

echo "***************************************************************************************************************"



echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  SNAP ************************************************"

## Instalando Visualg
sudo snap install wine-platform-runtime
sudo snap install wine-platform-3-stable
sudo sudo snap install visualg
sudo snap connect visualg:wine-runtime wine-platform-runtime
sudo snap connect visualg:wine-3-stable wine-platform-3-stable
sudo snap refresh visualg


sudo apt autoremove
