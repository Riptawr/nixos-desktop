{ config, pkgs, ... }:

{  environment.systemPackages = with pkgs; [
	sbt
	openjdk
	visualvm
	idea.idea-ultimate
	];
 nixpkgs.config.allowUnfree = true;
}

