# Steps from https://github.com/morrownr/8812au
sudo apt-get install raspberrypi-kernel-headers
sudo apt-get install dkms

git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git
cd rtl*
sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/g' Makefile
sed -i 's/CONFIG_PLATFORM_ARM_RPI = n/CONFIG_PLATFORM_ARM_RPI = y/g' Makefile
sudo make dkms_install


# Old method
#sudo apt update
#sudo apt install -y raspberrypi-kernel-headers bc build-essential dkms git
#mkdir ~/src
#cd ~/src
#git clone https://github.com/morrownr/8812au.git
#cd ~/src/8812au
#./raspi32.sh
#sudo ./install-driver.sh
#sudo reboot
