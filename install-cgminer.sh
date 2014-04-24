apt-get update
apt-get install -y libusb-1.0-0-dev libusb-1.0-0 libcurl4-openssl-dev libncurses5-dev libudev-dev

curl http://ck.kolivas.org/apps/cgminer/3.1/cgminer-3.1.1.tar.bz2 -O
tar xvf cgminer-3.1.1.tar.bz2
cd cgminer-3.1.1

./configure --enable-icarus
make

cat >cgminer.conf <<CGMINER_CONF
{
  "pools" : [
    {
      "url" : "btc.give-me-coins.com:3335 btc.give-me-coins.com:80",
      "user" : "piminer",
      "pass" : "raspberry"
    }
  ],
  "api-listen" : true,
  "api-port" : "4028",
  "expiry" : "120",
  "failover-only" : true,
  "log" : "5",
  "no-pool-disable" : true,
  "queue" : "2",
  "scan-time" : "60",
  "worktime" : true,
  "shares" : "0",
  "kernel-path" : "/usr/local/bin",
  "api-allow" : "0/0",
  "icarus-options" : "115200:1:1",
  "icarus-timing" : "3.0=100"
}
CGMINER_CONF
