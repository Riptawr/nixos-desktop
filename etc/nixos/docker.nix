{ config, pkgs, ... }:

{  environment.systemPackages = [ 
	pkgs.docker
	];

  virtualisation.docker.enable = true;
  virtualisation.docker.extraOptions = "--bip=10.13.0.1/16 --insecure-registry=supdockerhub:5000";
}

