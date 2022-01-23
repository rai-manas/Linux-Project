#! /bin/bash
 sudo apt-get install figlet
 figlet 'Welcome'


echo User Type :
echo 1.student 
echo 2.professor
echo Enter your Profession : 
read Profession
if [[ $Profession = "student" ]]
then
    echo Installing Git
    #sudo apt-get install -y git
    echo Installing Google chrome
    #wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    #sudo apt install ./google-chrome-stable_current_amd64.deb
    echo Installing Java
    #sudo apt-get install openjdk-11-jdk
    echo Installing VLC Player
    #sudo snap install vlc
    echo Installing VS Code
    #sudo snap install --classic code
    echo Installing Whatsapp
    #sudo snap install whatsapp-for-linux
elif [[ $Profession = "professor" ]]
then
    echo Installing LibreOffice
    #sudo apt install libreoffice
    echo Installing Google chrome
    #wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    #sudo apt install ./google-chrome-stable_current_amd64.deb
    echo Installing Open Board
    #sudo apt install snapd
    #sudo snap install openboard
    echo Installing Zoom
    #sudo apt install ./zoom_amd64.deb
    echo Installing Whatsapp
    #sudo snap install whatsapp-for-linux
else
    echo Invalid choice, terminating script
    exit
      
fi






























