# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "boxcutter/ubuntu1604-desktop"
  config.vm.box_version = "17.0907.1"

  config.vm.provider :virtualbox do |vb|
    # Anything related to provider configuration
    # is done in the Vagrant file provided
    # to the students
  end

  # MariaDB Server and Workbench Client
  config.vm.provision "shell", path: "provision/mariadb/provision.sh", env: {"PASSWORD" => "secret"}
  config.vm.provision "shell", path: "provision/mysql-workbench/provision.sh"

  # MongoDB
  config.vm.provision "shell", path: "provision/mongodb/provision.sh", env: {"PASSWORD" => "secret"}
  config.vm.provision "shell", path: "provision/robo3t/provision.sh"

  # Java Development Tools
  config.vm.provision "shell", path: "provision/eclipse-jdt/provision.sh"

  # Other System Setup
  config.vm.provision "shell", path: "provision/system/provision.sh"
end
