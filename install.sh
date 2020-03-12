##Arch
sudo pacman -S openbox obconf tint2 nitrogen arandr -yy

#Optional
sudo pacman -S obmenu compton plank pamac-tray xarchiver pcmanfm -yy
yay -S obmenu-generator lxappearance lxappearance-obconf

#Create Config Driectory
mkdir ~/.config/openbox

#Create autostart
nano ~/.config/openbox/autostart
echo '## Openbox Autostart' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '#compton -b --config ~/.config/compton.conf &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '# Launch Tint2' >> ~/.config/openbox/autostart
echo '(sleep 0; tint2) &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '# Thunar starting in daemon mode' >> ~/.config/openbox/autostart
echo '#thunar --daemon &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '# Bluetooth' >> ~/.config/openbox/autostart
echo '# (sleep 2; blueberry-tray) &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '#Launch Nitrogen then Plank' >> ~/.config/openbox/autostart
echo '(sleep 1; nitrogen --restore && plank) &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '# Numlock' >> ~/.config/openbox/autostart
echo 'numlockx &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '# Volume control systray' >> ~/.config/openbox/autostart
echo '(sleep 2; volumeicon) &' >> ~/.config/openbox/autostart
echo '#(sleep2; pasytray) &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '# Enable power management' >> ~/.config/openbox/autostart
echo '#xfce4-power-manager &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '# Clipboard Manager' >> ~/.config/openbox/autostart
echo '#(sleep 2; clipit) &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '# XFCE4 Settings' >> ~/.config/openbox/autostart
echo '#xfsettingsd &' >> ~/.config/openbox/autostart
echo '' >> ~/.config/openbox/autostart
echo '(sleep 5; nm-applet) &' >> ~/.config/openbox/autostart

#Copy default configs
cp /etc/xdg/openbox/* ~/.config/openbox/

########################
##Ubuntu
#sudo apt install openbox obconf tint2 nitrogen -yy
#Optional
#sudo apt install xarchiver lxappearance pcmanfm -yy
