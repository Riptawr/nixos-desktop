{ config, pkgs, ... }:

{  environment.systemPackages = with pkgs; [
	sbt
	openjdk
	visualvm
	openssl
	];

 nixpkgs.config.allowUnfree = true;
}

