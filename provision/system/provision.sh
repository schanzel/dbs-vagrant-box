#!/usr/bin/env bash

# Remove Pre-installed Clutter
sudo apt-get remove -y account-plugin-facebook
sudo apt-get remove -y account-plugin-flickr
sudo apt-get remove -y aisleriot
sudo apt-get remove -y gnome-mahjongg
sudo apt-get remove -y gnome-mines
sudo apt-get remove -y gnome-sudoku
sudo apt-get remove -y unity-lens-music
sudo apt-get remove -y unity-lens-video
sudo apt-get remove -y unity-lens-photos
sudo apt-get remove -y unity-scope-chromiumbookmarks
sudo apt-get remove -y unity-scope-colourlovers
sudo apt-get remove -y unity-scope-devhelp
sudo apt-get remove -y unity-scope-firefoxbookmarks
sudo apt-get remove -y unity-scope-openclipart
sudo apt-get remove -y unity-scope-texdoc
sudo apt-get remove -y unity-scope-tomboy
sudo apt-get remove -y unity-scope-video-remote
sudo apt-get remove -y unity-scope-yelp 
sudo apt-get remove -y unity-scope-zotero
sudo apt-get remove -y unity-webapps-common
sudo apt-get remove -y libreoffice* 
sudo apt-get autoremove -y

# Apply Autostart Script and Restart Window Manager
sudo cp /vagrant/provision/system/set-gnome-settings.sh.desktop /etc/xdg/autostart/
chmod uga+x /vagrant/provision/system/set-gnome-settings.sh
sudo service lightdm restart
