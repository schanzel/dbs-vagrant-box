#!/usr/bin/env bash

# Providing Robo3T in a comfortable way is a mess :-(

wget -q https://download.robomongo.org/1.1.1/linux/robo3t-1.1.1-linux-x86_64-c93c6b0.tar.gz
tar -xzf robo3t-1.1.1-linux-x86_64-c93c6b0.tar.gz
rm robo3t-1.1.1-linux-x86_64-c93c6b0/lib/libstdc++*
sudo mkdir -p /usr/local/bin/robo3t
sudo mv robo3t-1.1.1-linux-x86_64-c93c6b0/* /usr/local/bin/robo3t

cp /vagrant/provision/robo3t/robomongo-128x128.png /usr/local/bin/robo3t/bin/

rm robo3t-1.1.1-linux-x86_64-c93c6b0.tar.gz
rm -rf robo3t-1.1.1-linux-x86_64-c93c6b0/

sudo sudo cp /vagrant/provision/robo3t/robo3t.desktop /usr/share/applications/
