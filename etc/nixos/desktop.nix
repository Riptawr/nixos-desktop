{ config, pkgs, ... }:

{ services.xserver = {
	enable = true;
  	layout = "us";
  	#videoDrivers = [ "nvidia" "intel" ];

  	synaptics.enable = true;
  	synaptics.twoFingerScroll = true;
  	synaptics.accelFactor = "0.005";
  	synaptics.maxSpeed = "4.0";
  
  	windowManager.i3.enable = true;
  };

  hardware = {
   bumblebee = {
	connectDisplay = true;
	enable = true;
    };
   cpu.intel.updateMicrocode = true;
    opengl = {
	driSupport32Bit = true; # Support 32bit app acceleration (wine)
	extraPackages = with pkgs; [ vaapiIntel ];
    };
    pulseaudio = {
	enable = true;
   	support32Bit = true; # This might be needed for Steam games
   };
  };

  environment.systemPackages = with pkgs; [ 
	# i3 WM with XFCE4 essentials 
	i3 i3status i3lock-fancy i3pystatus
        dmenu
 	gtk gnome.gnomeicontheme hicolor_icon_theme shared_mime_info
	xautolock
	xorg.xbacklight
	xss-lock
	coreutils
	xdg_utils
	compton-git

	xfce.gtk_xfce_engine
	xfce.gvfs
	xfce.terminal
	xfce.thunar
	xfce.thunar_volman
	xfce.xfce4icontheme
	xfce.xfce4settings
	xfce.xfconf

	# Audio and Players
	pavucontrol
	vlc

	# Games
	steam
	
	# Photo and video editing
	gimp	

	# Web
	chromium

	# 3D accel
	bumblebee
	glxinfo
	primus
	];
}

