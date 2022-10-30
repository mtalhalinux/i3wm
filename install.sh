su
apt update
apt install sudo nano
nano /etc/sudoers
exit
sudo apt install wget meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3status  git htop hardinfo neofetch xorg vlc pulseaudio volumeicon-alsa  pcmanfm terminator nitrogen compton picom  nm-applet lxappearance alsa-utils pavucontrol dmenu unzip  geeqie arandr ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi ttf-dejavu arc-theme libpam0g-dev libxcb-xkb-dev xarchiver
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install
cd ../
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly/
make
sudo make install
cd ../
git clone https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes
cd Top-5-Bootloader-Themes
sudo ./install.sh
sudo systemctl enable ly
sudo apt autoremove
printf "\e[1;32mYou can now reboot! Thanks talha.\e[0m\n"



