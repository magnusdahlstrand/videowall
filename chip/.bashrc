export TERM=xterm-color
export LANGUAGE=en
alias vim=vim.tiny

ip() {
	ip addr show wlan0 | grep inet | head -n 1 | cut -d' ' -f6 | cut -d'/' -f1
}

mplay() {
	DISPLAY=:0 mplayer --fs --hardframedrop --idle --loop=0 --nosound --nosub --no-autosub --quiet --zoom "$@"
}
gplay() {
	DISPLAY=:0 gnome-mplayer --fullscreen --loop --random --single_instance --replace_and_play --keep_on_top --showcontrols=0
}

setup() {
	nmtui
	sudo apt-get install -y git-core screen build-essential locales mplayer gnome-mplayer
	sudo dpkg-reconfigure locales
	sudo sed -i -e 's/ExecStart=-\/sbin\/agetty --noclear %I \$TERM/ExecStart=-\/sbin\/agetty --noclear -a chip %I \$TERM/g' /lib/systemd/system/getty@.service
}
