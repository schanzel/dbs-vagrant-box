#!/usr/bin/env bash

# Import Key and Add Repository
sudo apt-get install -y software-properties-common
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
sudo add-apt-repository "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse"

# Install mongodb-org
sudo apt-get update
sudo apt-get install -y mongodb-org

# Create systemd Launch Script
sudo cp /vagrant/provision/mongodb/mongod.service /etc/systemd/system/

# Bind mongod to 0.0.0.0, accepting connections from outside the box
sudo sed -i.bak 's/^\(\s*bindIp:\).*/\1 0.0.0.0/g' /etc/mongod.conf

# Start mongod
sudo service mongod start

# Enable mongod (Start on Boot)
sudo systemctl enable /etc/systemd/system/mongod.service

# Authorization (disabled for now)

# sleep 5 # Sleep for a moment, waiting for mongod to come up

# # Create Admin User
# cat << EOF | mongo
# use admin
# db.createUser(
#   {
#     user: "admin",
#     pwd: "${PASSWORD}",
#     roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
#   }
# )
# EOF

# # Enable Authorization
# sudo sed -i.bak 's/^#\(security:\).*/\1\n  authorization: enabled/g' /etc/mongod.conf

# # Restart mongod
# sudo service mongod restart
