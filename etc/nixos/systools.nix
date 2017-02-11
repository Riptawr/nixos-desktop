{ config, pkgs, ... }:

{  environment.systemPackages = with pkgs; [ 
	acpi
	alsa-firmware
	alsaLib
	alsaUtils
	alsaPlugins
	alsaTools
	freerdp
	gzip
	liberation_ttf
	linuxPackages_3_10.acpi_call
	networkmanager
	networkmanagerapplet
	networkmanager_openvpn
	openvpn
	openssl
	python27Full
	python27Packages.requests
	python27Packages.py3status
	rfkill
	rfkill_udev
	remmina
	terminus_font
	xarchiver
	xfce.terminal
	xfce.thunar
	xfce.thunar-archive-plugin
	];
}
