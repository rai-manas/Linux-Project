#!/bin/bash
echo "PREPARING SETUP"
sudo apt-get install -y -qq figlet > /dev/nul
sudo apt install -y -qq snapd > /dev/nul
clear
figlet 'Welcome' | ./color_it.sh 1
echo "Setup account for type :"
echo "1.student"
echo "2.professor"
echo "Enter type : "
read Profession

func_commonInstall() {
    echo "INFO: installing libre office"
    #sudo apt-get install -qq -y libreoffice
    echo "INFO: installing google chrome"
    # wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    # sudo apt install -y -qq ./google-chrome-stable_current_amd64.deb
    # rm google-chrome-stable_current_amd64.deb
    echo "INFO: installing vlc media player"
    # sudo snap install -y -qq vlc    
    echo "INFO: installing zoom"
    # wget https://zoom.us/client/latest/zoom_amd64.deb
    # sudo apt install -y -qq ./zoom_amd64.deb
}
func_student() {
    echo "CONFIGURING SYSTEM FOR A STUDENT"
    sudo -i
    echo "INFO: creating user student"
    # adduser student
    exit
    echo "INFO: installing visual studio code"
    #sudo apt-get install -qq -y code --classic
    echo "INFO: installing git"
    # sudo apt-get install -y -qq git
    echo "INFO: installing jdk"
    # sudo apt-get install -y -qq openjdk-11-jdk
    echo "INFO: installing whatsapp"
    # sudo snap install -y -qq whatsapp-for-linux
    echo "INFO: installing obs"
    # sudo apt install -y -qq ffmpeg
    # sudo apt install -y -qq v4l2loopback-dkms
    # sudo add-apt-repository ppa:obsproject/obs-studio
    # sudo apt update
    # sudo apt install -y -qq obs-studio
    echo "INFO: installing discord"
    # sudo snap install -y -qq discord
}
func_professor() {
    echo "CONFIGURING SYSTEM FOR A PROFESSOR"
    sudo -i
    echo "INFO: creating user professor"
    # adduser professor
    echo "INFO: adding user professor to sudo group"
    # usermod -aG sudo professor
    exit
    echo "Installing Open Board"
    # sudo snap install -y -qq openboard
    echo "INFO: installing whatsapp"
    # sudo snap install -y -qq whatsapp-for-linux
}

if [[ $Profession = "student" ]]
then
    func_student()
    func_commonInstall()
elif [[ $Profession = "professor" ]]
then
    func_professor()
    func_commonInstall()
else
    echo "WARN: invalid account type"
    exit 
fi






























