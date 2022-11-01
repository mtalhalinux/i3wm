echo -ne "

███╗   ███╗████████╗ █████╗ ██╗     ██╗  ██╗ █████╗ ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗
████╗ ████║╚══██╔══╝██╔══██╗██║     ██║  ██║██╔══██╗██║     ██║████╗  ██║██║   ██║╚██╗██╔╝
██╔████╔██║   ██║   ███████║██║     ███████║███████║██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ 
██║╚██╔╝██║   ██║   ██╔══██║██║     ██╔══██║██╔══██║██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ 
██║ ╚═╝ ██║   ██║   ██║  ██║███████╗██║  ██║██║  ██║███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗
╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝
                                                                                          
"
# important packages
echo -ne "
                       ❖❀～ 𝐈𝐧𝐬𝐭𝐚𝐥𝐥𝐢𝐧𝐠 𝐈𝐦𝐩𝐨𝐫𝐭𝐚𝐧𝐭 𝐏𝐚𝐜𝐤𝐚𝐠𝐞𝐬 ～❀❖
  "                     

sudo apt install xorg pulseaudio alsa-utils pavucontrol compton picom network-manager-gnome
# basic used packages
sudo apt install vlc arandr geeqie pcmanfm terminator nitrogen dmenu xarchiver gparted firefox-esr
# Non essential but useful
sudo apt install arc-theme wget htop hardinfo neofetch lxappearance i3status  volumeicon-alsa Galculator
# Recommended for compiling
sudo apt install build-essential dkms linux-headers-$(uname -r)
# Needed for i3 gaps installation
sudo apt install meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev
sudo apt install libpam0g-dev libxcb-xkb-dev
# Install i3-gaps
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install
cd ../
# Install ly display manager
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make install installsystemd
systemctl enable ly.service
# turn on at startup
cd ../
if  ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3-gaps
Comment=Dynamic window manager
Exec=i3
Icon=i3
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/i3.desktop;rm ./temp

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"








