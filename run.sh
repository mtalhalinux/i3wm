sudo apt install i3-wm i3status xorg vlc pulseaudio volumeicon-alsa pcmanfm terminator feh alsa-utils pavucontrol dmenu
sudo apt install wget htop hardinfo neofetch compton picom lxappearance      
sudo apt install unzip geeqie arandr arc-theme
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make run
make install installsystemd
systemctl enable ly.service




