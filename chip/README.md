# Notes on installing chip

Connecting to macbook using usb cable, communicating via screen. Use `connect` script after plugging usb in.

When setting up wifi (`sudo nmtui`) the output gets garbled - resolving by editing .bashrc and `export TERM=xterm-color`.

Also setting `alias vim=“vim.tiny”` in .bashrc

```
sudo -s
apt update
apt upgrade
apt install git build-essential
```
