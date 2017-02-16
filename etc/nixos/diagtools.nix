{ config, pkgs, ... }:

{  environment.systemPackages = [ 
	pkgs.sysstat
	pkgs.strace
	pkgs.htop
	pkgs.iftop
	pkgs.tcpdump
	pkgs.inetutils
	pkgs.lm_sensors
	pkgs.nettools
	pkgs.utillinux
	pkgs.pciutils
	pkgs.usbutils
	];
}

