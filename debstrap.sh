# apt install sudo git
git clone https://github.com/jarun/nnn
sudo apt install make gcc
sudo apt install xorg
sudo apt install dwm spectrwm openbox
sudo apt install lemonbar conky rofi terminator nitrogen compton xbacklight
sudo apt install libreadline-dev libxinerama-dev libx11-dev libncurses5-dev libxft-dev libfreetype6-dev libx11-xcb-dev
sudo apt install thunar nm-applet trayer
sudo apt install firefox qutebrowser vim vifm
sudo apt install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

exit

sudo mkdir -p /usr/share/backgrounds
mkdir -p ~/.config/terminator
mkdir -p ~/.config/openbox

cp ~/Downloads/dotConfig/openbox/* ~/.config/openbox
cp ~/Downloads/dotConfig/terminator/* ~/.config/terminator
cp ~/Downloads/dotConfig/compton.conf ~/.config/
sudo cp usr_bin/screenlock /usr/local/bin/
#sudo cp usr_bin/passmenu /usr/local/bin/
#sudo cp usr_bin/emotmenu /usr/local/bin/
#sudo cp usr_bin/utf8.csv /usr/local/bin/
#sudo cp usr_bin/statusbar.sh /usr/local/bin/
#sudo cp usr_bin/tray /usr/local/bin/
#sudo cp usr_bin/monitor /usr/local/bin/
