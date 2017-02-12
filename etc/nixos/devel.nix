{ config, pkgs, ... }:

{  environment.systemPackages = with pkgs; [
	sbt
	openjdk
	visualvm
	];
 nixpkgs.config.allowUnfree = true;
}

