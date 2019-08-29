#!/bin/bash 

sudo apt update && apt install byobu python3-dev python3-pip python-dev python-pip 
sudo pip3 install setuptools
sudo pip install setuptools

FOLDERS=("umbra-configs" "umbra-orch")

for module in ${FOLDERS[@]} 
do
    cd ${module}
    echo "###################################"
    echo "Installing umbra module: ${module}"
    echo "###################################"
    sudo python3 setup.py develop
    cd -
done

cd "umbra-scenarios"
echo "###################################"
echo "Installing umbra module: umbra-scenarios"
echo "###################################"
sudo python2.7 setup.py develop
cd -