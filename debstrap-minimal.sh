cd ~/Downloads
git clone https://github.com/darekem73/dotConfig
#git clone https://github.com/darekem73/dotWallpapers
git clone https://github.com/jarun/nnn
sudo apt install qutebrowser
sudo apt install xserver-xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings 
sudo apt install dwm 
sudo apt install openbox lxappearance tint2

sudo apt install make gcc nitrogen libreadline-dev libxinerama-dev libx11-dev libncurses5-dev libncursesw5-dev libxft-dev libfreetype6-dev libxrandr-dev 
sudo apt install fzy fzf sxiv zathura
sudo apt install dunst lxpolkit
mkdir -p ~/.config/openbox
mkdir -p ~/.config/tint2

mkdir ~/.scripts
cp ~/Downloads/dotConfig/_scripts/* ~/.scripts
cp ~/Downloads/dotConfig/_config/openbox/* ~/.config/openbox
cp ~/Downloads/dotConfig/_config/tint2/* ~/.config/tint2
cp ~/Downloads/dotConfig/_config/compton.conf ~/.config/
sudo cp ~/Downloads/dotConfig/usr_bin/dwm-exit /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/netdiag /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/gwaddress /usr/local/bin/
sudo cp ~/Downloads/dotConfig/usr_bin/wifidiag /usr/local/bin/

sudo cp ~/Downloads/dotConfig/usr_share_xsessions/* /usr/share/xsessions
#sudo cp ~/Downloads/dotWallpapers/* /usr/share/backgrounds
cp ~/Downloads/dotConfig/_vimrc ~/.vimrc
cp ~/Downloads/dotConfig/_tmux.conf ~/.tmux.conf
cp ~/Downloads/dotConfig/_bash_aliases ~/.bash_aliases
cp ~/Downloads/dotConfig/_bashrc ~/.bashrc
#cat ~/Downloads/dotConfig/n-to-bashrc.txt >> ~/.bashrc
cp ~/Downloads/dotConfig/_bash_profile ~/.bash_profile
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
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/st
sudo update-alternatives --set x-terminal-emulator /usr/local/bin/st

sudo chmod +s /bin/ping
