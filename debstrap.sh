# su -
# apt install sudo git
# vi /etc/group
# exit
# exit
# mkdir ~/Downloads
# cd Downloads
# git clone https://github.com/darekem73/tools.git
git clone https://github.com/darekem73/dotConfig.git
git clone https://github.com/jarun/nnn
sudo apt install make gcc
sudo apt install xorg
sudo apt install dwm spectrwm openbox
sudo apt install lemonbar conky rofi terminator nitrogen compton xbacklight
sudo apt install libreadline-dev libxinerama-dev libx11-dev libncurses5-dev libxft-dev libfreetype6-dev libx11-xcb-dev
sudo apt install thunar nm-tray trayer
sudo apt install firefox qutebrowser vim vifm tmux screen w3m
sudo apt install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

sudo mkdir -p /usr/share/backgrounds
mkdir -p ~/.config/terminator
mkdir -p ~/.config/openbox

cp ~/Downloads/dotConfig/_config/openbox/* ~/.config/openbox
cp ~/Downloads/dotConfig/_config/terminator/* ~/.config/terminator
cp ~/Downloads/dotConfig/_config/compton.conf ~/.config/
sudo cp ~/Downloads/dotConfig/usr_bin/screenlock /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/run-spectrwm /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_share_xsessions/* /usr/share/xsessions
sudo cp ~/Downloads/dotConfig/usr_share_backgrounds/* /usr/share/backgrounds
#sudo cp ~/Downloads/dotConfig/usr_bin/passmenu /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/emotmenu /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/utf8.csv /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/statusbar.sh /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/tray /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/monitor /usr/local/bin/
cp ~/Downloads/dotConfig/_conkyrc-spectrwm ~/.conkyrc
cp ~/Downloads/dotConfig/_conkyrc-stat ~/.conkyrc-stat
cp ~/Downloads/dotConfig/_conkyrc-openbox ~/.conkyrc-openbox
cp ~/Downloads/dotConfig/_screenrc ~/.screenrc
cp ~/Downloads/dotConfig/_tmux.conf ~/.tmux.conf
cp ~/Downloads/dotConfig/_spectrwm.conf ~/.spectrwm.conf
cp ~/Downloads/dotConfig/_spectrwm_us.conf ~/.spectrwm_us.conf
cp ~/Downloads/dotConfig/_bash_aliases ~/.bash_aliases
cp ~/Downloads/dotConfig/_bashrc ~/.bashrc
cp ~/Downloads/dotConfig/autostart.sh ~/

cd ~/Downloads/tools/dmenu-4.9/
make
sudo make install

cd ~/Downloads/tools/dwm-6.2/
make
sudo make install

cd ~/Downloads/nnn
make
sudo make install

cd ~/Downloads/tools/slstatus
make
sudo make install

cd ~/Downloads/tools/st
make
sudo make install
