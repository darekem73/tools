# mkdir ~/Downloads
# cd Downloads
# git clone https://github.com/darekem73/tools.git

sudo zypper install vim git make
sudo zypper install ghc xmonad ghc-xmonad ghc-xmonad-devel ghc-xmonad-contrib ghc-xmonad-contrib-devel xmobar ghc-split ghc-split-devel
sudo dnf install redhat-rpm-config

sudo zypper in jetbrains-mono-fonts
sudo zypper in hack-fonts
sudo zypper in noto-sans-mono-fonts
sudo zypper in dejavu-fonts

sudo zypper install readline-devel freetype-devel 
sudo zypper install htop tmux alacritty nitrogen picom dunst 
sudo zypper install flatpak qutebrowser
sudo zypper install conky rofi fzy fzf curlftpfs rclone bc thunar
sudo zypper install gromit-mpx xsel xclip zathura nmon meld rtorrent entr 
sudo zypper install w3m openconnect timeshift password-store password-store-dmenu 
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

cd ~/Downloads
git clone https://github.com/darekem73/dotConfig
git clone https://github.com/darekem73/dotWallpapers
git clone https://github.com/jarun/nnn
# git clone https://github.com/magicmonty/bash-git-prompt.git
sudo zypper install imlib2-devel libexif-devel giflib-devel libwebp-devel
git clone https://github.com/nsxiv/nsxiv

sudo zypper install gtk3-devel
git clone https://github.com/mwh/dragon

sudo mkdir -p /usr/share/backgrounds

mkdir ~/.scripts
#cp ~/Downloads/dotConfig/_scripts/* ~/.scripts
mkdir ~/.xmonad
cp ~/Downloads/dotConfig/_xmonad/xmoand.hs-fedora ~/.xmonad/xmonad.hs
cp ~/Downloads/dotConfig/_xmonad/xmobarrc-fedora ~/.xmonad/xmobarrc
#cp ~/Downloads/dotConfig/_config/compton.conf ~/.config/
#cp ~/Downloads/dotConfiq/_config/qtile/* ~/.config/qtile
sudo cp ~/Downloads/dotConfig/usr_bin/dwm-exit /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/rofi-run /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/tmux-run /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/netdiag /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/gwaddress /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/wifidiag /usr/local/bin/
#sudo cp ~/Downloads/dotConfig/etc/sudoers.d /etc/sudoers.d/
#sudo cp ~/Downloads/dotConfig/etc/sudo.conf /etc/

sudo mkdir -p /usr/share/xsessions
sudo cp ~/Downloads/dotConfig/usr_share_xsessions/dwm.desktop /usr/share/xsessions
#sudo cp ~/Downloads/dotWallpapers/* /usr/share/backgrounds
#sudo cp ~/Downloads/dotConfig/usr_bin/passmenu /usr/local/bin/
#cp ~/Downloads/dotConfig/_conkyrc-stat ~/.conkyrc-stat
cp ~/Downloads/dotConfig/_vimrc ~/.vimrc
cp ~/Downloads/dotConfig/_tmux.conf ~/.tmux.conf
cp ~/Downloads/dotConfig/_bash_aliases ~/.bash_aliases
#cat ~/Downloads/dotConfig/n-to-bashrc.txt >> ~/.bashrc
cp ~/Downloads/dotConfig/_bashrc-fedora-2 ~/.bashrc
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

cd ~/Downloads/dragon
make clean
make
make install

cd ~/Downloads/nsxiv
make clean
make
sudo make install
sudo ln -s /usr/local/bin/nsxiv /usr/local/bin/sxiv
sudo ln -s /usr/share/applications/nsxiv.desktop /usr/share/applications/sxiv.desktop

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

