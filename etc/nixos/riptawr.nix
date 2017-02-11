{ config, pkgs, ... }:

{  environment.systemPackages = with pkgs; [
	zsh
	nix-repl
	nix-zsh-completions
	thunderbird
	hunspell
	python27Packages.py3status
	vivaldi
	curl
	file
	which
	unzip
	feh
	];

}

