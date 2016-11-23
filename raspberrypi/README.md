Install raspbian

Setup:
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install node

Wifi:
USB dongle: http://www.savagehomeautomation.com/raspi-airlink101
update /etc/hosts and /etc/hostname and run /etc/init.d/hostname.sh and reboot

Setup omxplayer:
lower video memory
install dependencies
install ffmpeg

Setup for screens in /boot/config.txt
assign more gpu memory (50/50)
set output resolution to 625x352
force PAL

transfer videos
play