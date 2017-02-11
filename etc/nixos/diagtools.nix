{ config, pkgs, ... }:

{  environment.systemPackages = [ 
	pkgs.sysstat
	pkgs.strace
	pkgs.htop
	pkgs.iftop
	pkgs.lsb-release
	pkgs.tcpdump
	pkgs.inetutils
	pkgs.lm_sensors
	pkgs.nettools
	pkgs.utillinux
	pkgs.pciutils
	];
}

