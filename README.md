## Moving from Arch to NixOs

This repo is part of my attempt to get a working nixos desktop setup, similar to my previous arch for my Dell Inspiron 77xx something.

## The goal:

- Encrypted disk with Btrfs, although no snapshots (why would you snapshot NixOs?)
- working Steam with Nvidia drivers, ideally bumblebe  
- working development Scala/Java with Intellij Ultimate
- working sciency development in Python2/3 with Pycharm
- i3 WM with py3status bar and XFCE4 desktop tools, where necessary
- NetworkManager for wifi and openvpn
- Google play music and Vivaldi browser working
- thunderbird / enigmail
- franz for messaging
- remmina with rdesktop
- firefox with iced-tea for java in the browser (yay!)
- setxkbmap for switching languages
- all function keys working
- amazon cli tools
- no configuration drift (all stuff is managed via Nix or scripts)  

## How to use:

1. follow the regular steps for creating a luks-encrypted drive
2. decrypt it and mount int /mnt
3. ```nixos install --root /mnt```
4. copy the [configuration](etc/nixos/) from this repo, but do not overwrite ```hardware-configuration.nix```  
5. modify ```configuration.nix``` to point to correct partition instead of /dev/sda2 (see your hardware-configuration.nix)
6. install nixos as usual
7. (optional) copy contents from the `userhome` dir into your home to get i3 up and running
