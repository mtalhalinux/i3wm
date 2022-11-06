echo -ne "

███╗   ███╗████████╗ █████╗ ██╗     ██╗  ██╗ █████╗ ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗
████╗ ████║╚══██╔══╝██╔══██╗██║     ██║  ██║██╔══██╗██║     ██║████╗  ██║██║   ██║╚██╗██╔╝
██╔████╔██║   ██║   ███████║██║     ███████║███████║██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ 
██║╚██╔╝██║   ██║   ██╔══██║██║     ██╔══██║██╔══██║██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ 
██║ ╚═╝ ██║   ██║   ██║  ██║███████╗██║  ██║██║  ██║███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗
╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝
                                                                                          
"

echo -ne "
                       ❖❀～ 𝐈𝐧𝐬𝐭𝐚𝐥𝐥𝐢𝐧𝐠 𝐈𝐦𝐩𝐨𝐫𝐭𝐚𝐧𝐭 𝐏𝐚𝐜𝐤𝐚𝐠𝐞𝐬 ～❀❖
  "                     

sudo apt install -y xorg pulseaudio alsa-utils pavucontrol compton picom nm-applet kitty
# basic used packages
echo -ne "
                      🌸ꗥ～ꗥ🌸 𝐈𝐧𝐬𝐭𝐚𝐥𝐥𝐢𝐧𝐠 𝐛𝐚𝐬𝐢𝐜 𝐩𝐚𝐜𝐤𝐚𝐠𝐞𝐬 🌸ꗥ～ꗥ🌸
"                      
sudo apt install -y vlc arandr geeqie pcmanfm feh dmenu xarchiver gparted firefox-esr
# Non essential but useful
echo -ne "
                       🌸ꗥ～ꗥ🌸 𝐢𝐧𝐬𝐭𝐚𝐥𝐥𝐢𝐧𝐠 𝐬𝐨𝐦𝐞𝐭𝐢𝐦𝐞 𝐧𝐞𝐞𝐝𝐞𝐝 𝐩𝐚𝐜𝐤𝐚𝐠𝐞𝐬 🌸ꗥ～ꗥ🌸
"
sudo apt install -y arc-theme wget htop hardinfo neofetch lxappearance i3status  volumeicon-alsa galculator
echo -ne "
                              ❀💋 ᖇEᑕOᗰᗰEᑎᗪEᗪ ᖴOᖇ ᑕOᗰᑭIᒪIᑎG 💋❀
"
# Recommended for compiling
sudo apt install -y build-essential dkms linux-headers-$(uname -r)

echo -ne "
                                    𝙉𝙚𝙚𝙙𝙚𝙙 𝙛𝙤𝙧 𝙞3 𝙜𝙖𝙥𝙨 𝙞𝙣𝙨𝙩𝙖𝙡𝙡𝙖𝙩𝙞𝙤𝙣
 "                                  
# Needed for i3 gaps installation
sudo apt install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev
sudo apt install -y libpam0g-dev libxcb-xkb-dev
echo -ne "
                                 ██▓▒­░⡷⠂𝙸𝚗𝚜𝚝𝚊𝚕𝚕𝚒𝚗𝚐  𝚒𝟹-𝚐𝚊𝚙𝚜⠐⢾░▒▓██
   "                               
# Install i3-gaps
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install
cd ../
echo -ne "
                                     🅸🅽🆂🆃🅰🅻🅻🅸🅽🅶 🅻🅾🅶🅸🅽 🅼🅰🅽🅰🅶🅴🆁
"
# Install ly display manager
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make install installsystemd
systemctl enable ly.service
# turn on at startup
echo -ne "
                                             𝐜𝐨𝐧𝐟𝐢𝐠𝐮𝐫𝐢𝐧𝐠 𝐢𝟑-𝐠𝐚𝐩𝐬🌈™
 "                                           
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
echo -ne "

$$\      $$\ $$$$$$$$\        $$\ $$\                 $$\ $$\                               
$$$\    $$$ |\__$$  __|       $$ |$$ |                $$ |\__|                              
$$$$\  $$$$ |   $$ | $$$$$$\  $$ |$$$$$$$\   $$$$$$\  $$ |$$\ $$$$$$$\  $$\   $$\ $$\   $$\ 
$$\$$\$$ $$ |   $$ | \____$$\ $$ |$$  __$$\  \____$$\ $$ |$$ |$$  __$$\ $$ |  $$ |\$$\ $$  |
$$ \$$$  $$ |   $$ | $$$$$$$ |$$ |$$ |  $$ | $$$$$$$ |$$ |$$ |$$ |  $$ |$$ |  $$ | \$$$$  / 
$$ |\$  /$$ |   $$ |$$  __$$ |$$ |$$ |  $$ |$$  __$$ |$$ |$$ |$$ |  $$ |$$ |  $$ | $$  $$<  
$$ | \_/ $$ |   $$ |\$$$$$$$ |$$ |$$ |  $$ |\$$$$$$$ |$$ |$$ |$$ |  $$ |\$$$$$$  |$$  /\$$\ 
\__|     \__|   \__| \_______|\__|\__|  \__| \_______|\__|\__|\__|  \__| \______/ \__/  \__|
                                                                                            
 "                                                                                           
                                                                                            
echo -ne "
                          ᑕᕼᗩᑎGIᑎG OᖇIGIᑎᗩᒪ I3 ᑕOᑎᖴIG ᖴIᒪE
"
# change confile file
cd ~/.config/i3
rm -r config
cd ~/i3wm
mv config ~/i3
echo -ne "
                      ꧁༺ 𝓢𝓮𝓽𝓽𝓲𝓷𝓰-𝓾𝓹 𝓟𝓲𝓬𝓸𝓶 ༻꧂
 "                     
# now for picom
cd ~/.config
mkdir picom
cd ~/i3wm
cd  picom.conf ~/.config/picom



printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"








