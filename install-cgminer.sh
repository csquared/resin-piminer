apt-get update
apt-get install -y libusb-1.0-0-dev libusb-1.0-0 libcurl4-openssl-dev \
  libncurses5-dev libudev-dev bzip2

wget http://ck.kolivas.org/apps/cgminer/old/3.1/cgminer-3.1.1.tar.bz2
tar xvf cgminer-3.1.1.tar.bz2
cd cgminer-3.1.1

./configure --enable-icarus
make
