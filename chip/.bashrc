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
	sudo apt-get install git-core screen build-essential locales
	sudo dpkg-reconfigure locales
}
