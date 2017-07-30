export TERM=xterm-color
export LANGUAGE=en
export DISPLAY=:0
alias vim=vim.tiny

ip() {
	ip addr show wlan0 | grep inet | head -n 1 | cut -d' ' -f6 | cut -d'/' -f1
}

mplay() {
	mplayer --fs --hardframedrop --idle --loop=0 --nosound --nosub --no-autosub --quiet -zoom -vm -vo x11 -display $DISPLAY "$@"
}
gplay() {
	DISPLAY=:0 gnome-mplayer --fullscreen --loop --random --single_instance --replace_and_play --keep_on_top --showcontrols=0
}

setup() {
	nmtui
	sudo apt-get install -y git-core screen build-essential locales mplayer gnome-mplayer
	sudo dpkg-reconfigure locales
	sudo sed -i -e 's/ExecStart=-\/sbin\/agetty --noclear %I \$TERM/ExecStart=-\/sbin\/agetty --noclear -a chip %I \$TERM/g' /lib/systemd/system/getty@.service
	sudo usermod -aG video $USER
}

init-screen() {
	sudo X $DISPLAY -layout 648x432 &
}
