{ config, pkgs, ... }:

{  environment.systemPackages = with pkgs; [
	truecrypt
	keepassx2
	gnupg 
	wireshark
	nmap
	];
}

