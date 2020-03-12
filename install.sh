##Arch
sudo pacman -S openbox obconf tint2 nitrogen arandr -yy

#Optional
sudo pacman -S obmenu compton plank pamac-tray xarchiver pcmanfm -yy
yay -S obmenu-generator lxappearance lxappearance-obconf

#Create Config Driectory
mkdir ~/.config/openbox

#Create autostart
nano ~/.config/openbox/autostart
echo 

#Copy default configs
cp /etc/xdg/openbox/* ~/.config/openbox/

########################
##Ubuntu
#sudo apt install openbox obconf tint2 nitrogen -yy
#Optional
#sudo apt install xarchiver lxappearance pcmanfm -yy
