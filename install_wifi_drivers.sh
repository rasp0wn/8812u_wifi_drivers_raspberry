# Steps from https://github.com/morrownr/8812au

sudo apt update
sudo apt install -y raspberrypi-kernel-headers bc build-essential dkms git
mkdir ~/src
cd ~/src
git clone https://github.com/morrownr/8812au.git
cd ~/src/8812au
./raspi32.sh
sudo ./install-driver.sh
sudo reboot
