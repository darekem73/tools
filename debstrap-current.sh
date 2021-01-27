# su -
# apt install sudo git
# vi /etc/group
# exit
# exit
# mkdir ~/Downloads
# cd Downloads
# git clone https://github.com/darekem73/tools.git
cd ~/Downloads
git clone https://github.com/darekem73/dotConfig
git clone https://github.com/darekem73/dotWallpapers
git clone https://github.com/jarun/nnn
git clone https://github.com/magicmonty/bash-git-prompt.git
#git clone https://github.com/mbusb/multibootusb
#droidcam
#git clone https://github.com/dev47apps/droidcam.git
#sudo apt install libavutil-dev libturbojpeg0-dev libswscale-dev libspeex-dev

#vimb
#sudo apt install libwebkit2gtk-4.0-dev
#git clone https://github.com/fanglingsu/vimb

sudo apt install firefox
#sudo apt install firefox-esr
#sudo apt install libreoffice libreoffice-gtk3 libreoffice-style-elementary
sudo apt install qutebrowser
#sudo apt install xserver-xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings 
#sudo apt install xinit
#sudo apt install dwm 
#sudo apt install spectrwm lemonbar
#sudo apt install herbstluftwm dzen2 
#sudo apt install openbox lxappearance tint2 mousepad ssh-askpass-fullscreen

#drag and drop for nnn
#sudo apt install libgtk-3-dev
#git clone https://github.com/mwh/dragon.git

sudo apt install make gcc conky rofi nitrogen feh picom libreadline-dev libxinerama-dev libx11-dev libncurses5-dev libncursesw5-dev libxft-dev libfreetype6-dev libxrandr-dev thunar trayer tmux w3m slick-greeter
sudo apt install fzy fzf curlftpfs sshfs rclone xautolock xournal gromit-mpx vifm xsel newsboat sxiv zathura impressive simplescreenrecorder
sudo apt install dunst lxsession
sudo apt install nmon meld youtube-dl mpv rtorrent mtools entr
sudo apt install xmonad xmobar cabal-install
sudo apt install libghc-split-dev libasound2-dev libxpm-dev
sudo apt install ttf-mscorefonts-installer
#cabal update
#cabal install xmobar --flags="all_extensions"
#lub
	#git clone git://github.com/jaor/xmobar
	#cd ~/Downloads/xmobar
	#cabal install xmobar.cabal --flags="all_extensions"

sudo mkdir -p /usr/share/backgrounds
#mkdir -p ~/.config/terminator
#mkdir -p ~/.config/openbox
#mkdir -p ~/.config/tint2
#mkdir -p ~/.xmonad

mkdir ~/.scripts
cp ~/Downloads/dotConfig/_scripts/* ~/.scripts
cp ~/Downloads/dotConfig/_xmonad/* ~/.xmonad
#cp ~/Downloads/dotConfig/_config/openbox/* ~/.config/openbox
#cp ~/Downloads/dotConfig/_config/tint2/* ~/.config/tint2
#cp ~/Downloads/dotConfig/_config/terminator/* ~/.config/terminator
cp ~/Downloads/dotConfig/_config/compton.conf ~/.config/
#sudo cp ~/Downloads/dotConfig/usr_bin/screenlock /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/run-spectrwm /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/dwm-exit /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/conky-spectrwm /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/netdiag /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/gwaddress /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/wifidiag /usr/local/bin/
sudo cp ~/Downloads/dotConfig/etc/sudoers.d /etc/sudoers.d/
#sudo cp ~/Downloads/dotConfig/etc/sudo.conf /etc/

sudo cp ~/Downloads/dotConfig/usr_share_xsessions/* /usr/share/xsessions
#sudo cp ~/Downloads/dotWallpapers/* /usr/share/backgrounds
sudo cp ~/Downloads/dotConfig/usr_bin/passmenu /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/emotmenu /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/utf8.csv /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/usr_bin/statusbar.sh /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/tray /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/monitor /usr/local/bin/
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak install com.viber.Viber
# flatpak install org.signal.Signal
# flatpak install us.zoom.Zoom
# flatpak install com.spotify.Client
# flatpak install com.slack.Slack
# flatpak install com.microsoft.Teams
# flatpak install com.wps.Office
# flatpak install org.onlyoffice
#cp ~/Downloads/dotConfig/_conkyrc-spectrwm ~/.conkyrc-spectrwm
#cp ~/Downloads/dotConfig/_conkyrc-stat ~/.conkyrc-stat
#cp ~/Downloads/dotConfig/_conkyrc-stat-1 ~/.conkyrc-stat-2
#cp ~/Downloads/dotConfig/_conkyrc-stat-2 ~/.conkyrc-stat-2
#cp ~/Downloads/dotConfig/_conkyrc-openbox ~/.conkyrc-openbox
cp ~/Downloads/dotConfig/_vimrc ~/.vimrc
#cp ~/Downloads/dotConfig/_screenrc ~/.screenrc
cp ~/Downloads/dotConfig/_tmux.conf ~/.tmux.conf
#cp ~/Downloads/dotConfig/_spectrwm.conf ~/.spectrwm.conf
#cp ~/Downloads/dotConfig/_spectrwm_us.conf ~/.spectrwm_us.conf
cp ~/Downloads/dotConfig/_bash_aliases ~/.bash_aliases
cp ~/Downloads/dotConfig/_bashrc ~/.bashrc
#cat ~/Downloads/dotConfig/n-to-bashrc.txt >> ~/.bashrc
cp ~/Downloads/dotConfig/_bash_profile ~/.bash_profile
cp ~/Downloads/dotConfig/autostart.sh ~/

cd ~/Downloads/tools/dmenu-4.9/
make
sudo make install

cd ~/Downloads/tools/dwm-6.2-candidate/
make
sudo make install

cd ~/Downloads/nnn
make
sudo make install

cd ~/Downloads/tools/slock
make
sudo make install

cd ~/Downloads/tools/slstatus
make
sudo make install

cd ~/Downloads/tools/st-new
make
sudo make install
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/st
sudo update-alternatives --set x-terminal-emulator /usr/local/bin/st

#droidcam
#cd ~/Downloads/tools/droidcam
#make
#sudo ./install-video
#sudo ./install-dkms

sudo chmod +s /bin/ping
