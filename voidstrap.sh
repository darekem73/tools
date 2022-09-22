# su -
# xbps-install -Su
# xbps-install vim git vpm
# sudo vim /etc/sudoers
# sudo vim /etc/passwd

# mkdir ~/Downloads
# cd Downloads
# git clone https://github.com/darekem73/tools.git

sudo xbps-install make gcc perl readline-devel freetype-devel libXinerama-devel libXft-devel libX11-devel libXrandr-devel elogind dbus xorg lightdm lightdm-gtk3-greeter htop tmux alacritty nitrogen picom wget curl NetworkManager dragon pkg-config
sudo xbps-install conky rofi fzy fzf curlftpfs fuse-sshfs rclone xautolock xournal gromit-mpx xsel sxiv zathura nmon meld rtorrent entr 
sudo xbps-install w3m openconnect timeshift pass 
sudo xbps-install xdg-desktop-portal xdg-user-dirs xdg-utils flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

cd ~/Downloads
git clone https://github.com/darekem73/dotConfig
git clone https://github.com/darekem73/dotWallpapers
git clone https://github.com/jarun/nnn
# git clone https://github.com/magicmonty/bash-git-prompt.git

sudo ln -s /etc/sv/dbus/ /var/service/
sudo ln -s /etc/sv/elogind/ /var/service/
sudo ln -s /etc/sv/lightdm/ /var/service/
sudo sv up dbus
sudo sv up elogind
sudo sv up lightdm
sudo sv down dhcpcd
sudo rm /var/service/dhcpcd
sudo ln -s /etc/sv/NetworkManager/ /var/service/
sudo sv up NetworkManager

sudo cp ~/Downloads/dotConfig/etc/lightdm/void-lightdm.conf /etc/lightdm/lightdm.conf

# sudo vpm install qutebrowser

sudo mkdir -p /usr/share/backgrounds

mkdir ~/.scripts
cp ~/Downloads/dotConfig/_scripts/* ~/.scripts
cp ~/Downloads/dotConfig/_config/compton.conf ~/.config/
sudo cp ~/Downloads/dotConfig/usr_bin/dwm-exit /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/netdiag /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/gwaddress /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/wifidiag /usr/local/bin/
sudo cp ~/Downloads/dotConfig/etc/sudoers.d /etc/sudoers.d/
#sudo cp ~/Downloads/dotConfig/etc/sudo.conf /etc/

sudo mkdir -p /usr/share/xsessions
sudo cp ~/Downloads/dotConfig/usr_share_xsessions/dwm.desktop /usr/share/xsessions
#sudo cp ~/Downloads/dotWallpapers/* /usr/share/backgrounds
sudo cp ~/Downloads/dotConfig/usr_bin/passmenu /usr/local/bin/
cp ~/Downloads/dotConfig/_conkyrc-stat ~/.conkyrc-stat
cp ~/Downloads/dotConfig/_vimrc ~/.vimrc
cp ~/Downloads/dotConfig/_tmux.conf ~/.tmux.conf
cp ~/Downloads/dotConfig/_bash_aliases ~/.bash_aliases
cp ~/Downloads/dotConfig/_bashrc ~/.bashrc
#cp ~/Downloads/dotConfig/_bash_profile ~/.bash_profile
cp ~/Downloads/dotConfig/autostart.sh ~/

cd ~/Downloads/tools/dmenu-5.0-patched/
make clean
make
sudo make install

cd ~/Downloads/tools/dwm-6.2-new/
make clean
make
sudo make install

cd ~/Downloads/nnn
make clean
make
sudo make install

cd ~/Downloads/tools/slock
make clean
make
sudo make install

cd ~/Downloads/tools/slstatus-2
make clean
make
sudo make install

cd ~/Downloads/tools/st-new-2
make clean
make
sudo make install

sudo chmod +s /bin/ping
