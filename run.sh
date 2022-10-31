sudo apt install i3-wm i3status xorg vlc pulseaudio volumeicon-alsa pcmanfm terminator nitrogen alsa-utils pavucontrol  
sudo apt install wget htop hardinfo neofetch compton picom lxappearance      
sudo apt install unzip geeqie arandr arc-theme
su
apt install build-essential libpam0g-dev libxcb-xkb-dev
exit
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make run
make install installsystemd
systemctl enable ly.service




