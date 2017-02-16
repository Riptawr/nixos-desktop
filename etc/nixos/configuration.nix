# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./desktop.nix
      ./systools.nix
      ./diagtools.nix
      ./docker.nix
      ./devel.nix
      ./security.nix
      ./riptawr.nix
      ./boot.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
  boot.loader.grub.enableCryptodisk = true;

  # Make the manual available on F8 terminal
  services.nixosManual.showManual = true;
  
  networking.hostName = "lambdacore"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Select internationalisation properties.
    i18n = {
      consoleFont = "Lat2-Terminus16";
      consoleKeyMap = "us";
      defaultLocale = "en_US.UTF-8";
    };

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
   environment.systemPackages = with pkgs; [
     wget
     vim
     git
   ];

  # List services that you want to enable:  

  # Enable NM and applet
  networking.networkmanager.enable = true;

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  users.extraUsers.riptawr = {
    isNormalUser = true;
    uid = 1000;
    openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeWEySIoWsH/aXnluy1YEvVD/riDu0kiELjSie7u83HRWAun8UyZT11lCssBgv+XRhW8SBxDYFWbsf6eXCqg3c3YS1qmRHXH1Twa+Y4FDAF8woZDh9jH49bSnVYedcrgG58hPPFBT+UBjaWgVdehP08gASPuBiQTjjCj/JgqlIFPG2AIU8ISr88R6QZWx144Qq/ZC0jDIg1FYJuAK+/WEJYb5N1E299ek1lNLU2Val0b1MHfUArtud3ssj9hlBtMdRQdWKjzQg3eQsXp1Ey7sQiqltlOZzMXHB26NaGTjug0BGInUDBv2bdHFGnLA0QjcMgYlJ2QTsMI+qYyYb1gmt riptawr@codebot-2014-03-07" ]; 
    extraGroups = [ "wheel" "networkmanager" "adm" "disk" "docker" "uucp" ];
  };

  # Immutable user settings, no runtime additions
  #users.mutableUsers = false;

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.09";

}
