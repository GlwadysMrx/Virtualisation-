#!/bin/bash

var1=0
var2=0

echo "Choisissez une adresse IP" 
read var1

echo "Choisissez le nom d'un dossier à créer et synchroniser"
read var2

mkdir $var2

touch Vagrantfile
echo " # -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(\"2\") do |config|
	config.vm.box = \"ubuntu/xenial64\" 
	config.vm.network \"private_network\", ip: \"$var1\"
	config.vm.synced_folder \"./$var2\", \"/var/www/html\"
end" >>./Vagrantfile

vagrant up
vagrant ssh
