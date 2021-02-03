#! /bin/bash
printf "Installing the server, please wait..." >&2
{
sudo useradd -m ubuntu
sudo adduser ubuntu sudo
echo 'ubuntu:12345678' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo adduser ubuntu chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup has completed " >&2 ||
printf "\nAn error has occured " >&2
printf '\nPlease check https://remotedesktop.google.com/headless And copy the command line of Debian Linux and then paste it\n'
read -p "Command: " CRP
su - ubuntu -c """$CRP"""
printf 'Please check https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nPackage upgrade has completed. " >&2
else
    printf "\n\nAn error has occured " >&2
fi
