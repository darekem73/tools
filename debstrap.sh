# su -
# apt install sudo git
# vi /etc/group
# exit
# exit
# mkdir ~/Downloads
# cd Downloads
# git clone https://github.com/darekem73/tools.git
git clone https://github.com/darekem73/dotConfig
git clone https://github.com/jarun/nnn
#git clone https://github.com/fanglingsu/vimb
#sudo apt install firefox
#sudo apt install firefox-esr
#sudo apt install qutebrowser
sudo apt install xserver-xorg make gcc dwm spectrwm openbox conky rofi nitrogen compton xbacklight libreadline-dev libxinerama-dev libx11-dev libncurses5-dev libxft-dev libfreetype6-dev libx11-xcb-dev pcmanfm trayer vim vifm tmux screen w3m lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings lxappearance tint2 mousepad ssh-askpass-fullscreen
#sudo apt install lemonbar
sudo apt install xmonad xmobar

sudo mkdir -p /usr/share/backgrounds
#mkdir -p ~/.config/terminator
mkdir -p ~/.config/openbox
mkdir -p ~/.config/tint2
mkdir -p ~/.xmonad

cp ~/Downloads/dotConfig/_xmonad/* ~/.xmonad
cp ~/Downloads/dotConfig/_config/openbox/* ~/.config/openbox
cp ~/Downloads/dotConfig/_config/tint2/* ~/.config/tint2
#cp ~/Downloads/dotConfig/_config/terminator/* ~/.config/terminator
cp ~/Downloads/dotConfig/_config/compton.conf ~/.config/
sudo cp ~/Downloads/dotConfig/usr_bin/screenlock /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/run-spectrwm /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/conky-spectrwm /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/netdiag /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/gwaddress /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/netdiag.sh /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/wifidiag /usr/local/bin/
sudo cp ~/Downloads/dotConfig/etc/sudo.conf /etc/

sudo cp ~/Downloads/dotConfig/usr_share_xsessions/* /usr/share/xsessions
sudo cp ~/Downloads/dotConfig/usr_share_backgrounds/* /usr/share/backgrounds
#sudo cp ~/Downloads/dotConfig/usr_bin/passmenu /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/emotmenu /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/utf8.csv /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/statusbar.sh /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/tray /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/monitor /usr/local/bin/
# sudo apt install flatpak mopidy ncmpcpp
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak install com.viber.Viber
# flatpak install org.signal.Signal
# flatpak install us.zoom.Zoom
# flatpak install com.spotify.Client
cp ~/Downloads/dotConfig/_conkyrc-spectrwm ~/.conkyrc-spectrwm
cp ~/Downloads/dotConfig/_conkyrc-stat ~/.conkyrc-stat
cp ~/Downloads/dotConfig/_conkyrc-openbox ~/.conkyrc-openbox
cp ~/Downloads/dotConfig/_vimrc ~/.vimrc
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
