#!/bin/sh

# The following uncommented code will install the required dependencies
# Do not use on bloomcounty, it already has dependencies and will give root access

while true; do
    read -p "Do you wish to install Commander Keen on this Unix System? " yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# chmod 777
# sudo apt install build-essential
# sudo apt install libgl1-mesa-dev
# sudo apt install libcurl4-openssl-dev
# sudo apt install zlib1g-dev
# sudo apt install libsdl2-dev
# sudo apt install libsdl2-image-dev
# sudo apt install libsdl2-mixer-dev
# sudo apt install libsdl2-ttf-dev
# sudo apt install libpthread-stub0-dev
# echo "Dependencies installed succesfully!"

git clone https://gitlab.com/Dringgstein/Commander-Genius
echo "Gitlab repo cloned successfully!"

mv Commander-Genius CGeniusSrc
mkdir -p CGeniusBuild
cd CGeniusBuild
echo "Directories created. Building Executable..."

cmake ../CGeniusSrc
make
echo "Executable built successfully! Starting program..."

cd CGeniusBuild
cd src
./CGeniusExe
