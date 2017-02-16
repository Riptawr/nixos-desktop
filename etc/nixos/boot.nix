# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
	#Additional boot options
	boot.extraKernelParams = [ "pcie_port_pm=off" ];
	boot.kernel.sysctl = {
	    "vm.swappiness" = 0;
	    "kernel.dmesg_restrict" = 1;
	    #"kernel.kptr_restrict" = 1;

	    #https://wiki.archlinux.org/index.php/Sysctl#TCP.2FIP_stack_hardening
	    "net.ipv4.tcp_syncookies" = 1;
	    "net.ipv4.tcp_rfc1337" = 1;
	    "net.ipv4.conf.default.rp_filter" = 1;
        "net.ipv4.conf.all.rp_filter" = 1;
        "net.ipv4.icmp_echo_ignore_broadcasts" = 1;
        "net.ipv4.icmp_ignore_bogus_error_responses" = 1;
        "net.ipv4.conf.default.send_redirects" = 0;
        "net.ipv4.conf.all.send_redirects" = 0;
        "net.ipv4.conf.default.accept_redirects" = 0;
        "net.ipv4.conf.all.accept_redirects" = 0;
        "net.ipv6.conf.default.accept_redirects" = 0;
        "net.ipv6.conf.all.accept_redirects" = 0;

	};
}
  
