#!/bin/bash
sudo apt-get install -y -qq figlet
figlet 'Welcome'
echo "User Type :"
echo "1.student"
echo "2.professor"
echo "Enter your Profession : "
read Profession
if [[ $Profession = "student" ]]
then
    echo "Installing Git"
    sudo apt-get install -y -qq git
    echo "Installing Google chrome"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install -y -qq ./google-chrome-stable_current_amd64.deb
    echo "Installing Java"
    sudo apt-get install -y -qq openjdk-11-jdk
    echo "Installing VLC Player"
    sudo snap install -y -qq vlc
    echo "Installing VS Code"
    sudo snap install -y -qq --classic code
    echo "Installing Whatsapp"
    sudo snap install -y -qq whatsapp-for-linux
    echo "Installing OBS Studio"
    sudo apt install -y -qq ffmpeg
    sudo apt install -y -qq v4l2loopback-dkms
    sudo add-apt-repository ppa:obsproject/obs-studio
    sudo apt update
    sudo apt install -y -qq obs-studio
    echo "Installing Discord"
    sudo snap install -y -qq discord
elif [[ $Profession = "professor" ]]
then
    echo "Installing LibreOffice
    sudo apt install -y -qq libreoffice
    echo "Installing Google chrome"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install -y -qq ./google-chrome-stable_current_amd64.deb
    echo "Installing Open Board"
    sudo apt install -y -qq snapd
    sudo snap install -y -qq openboard
    echo "Installing Zoom
    sudo apt install -y -qq ./zoom_amd64.deb
    echo "Installing Whatsapp"
    sudo snap install -y -qq whatsapp-for-linux
else
    echo "Invalid choice, terminating script"
    exit 
fi
