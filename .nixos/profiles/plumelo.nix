{ config, lib, pkgs, ... }:
{
  imports = [
    # all new pkgs and/or overlays
    ../pkgs/all.nix

    # config
    ../modules/services/X11/gnome3.nix 
    ../modules/virtualisation/lxc.nix
    ../modules/virtualisation/lxd.nix
    ../modules/hardware/ssd.nix
  ];

  nix.buildCores = 8;
  nixpkgs.config.allowUnfree = true;

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  time.timeZone = "Europe/Bucharest";

  powerManagement = {
    enable = true;
  };

  programs = {
    tmux.enable = true;
    fish.enable = true;
    java.enable = true;
  };

  hardware = {
    pulseaudio.enable = true;
    cpu.intel.updateMicrocode = true;
    cpu.amd.updateMicrocode = true;

    opengl.extraPackages = with pkgs; [ vaapiIntel libvdpau-va-gl vaapiVdpau ];
  };

  boot = {
    initrd.availableKernelModules = [
      "hid-logitech-hidpp"
    ];
    kernelModules = [
      "coretemp"
    ];
    kernelPackages = pkgs.linuxPackages_4_15;
    blacklistedKernelModules = ["ideapad-laptop"];
  };

  users.defaultUserShell = "/run/current-system/sw/bin/fish";

  environment.variables = {
    EDITOR = "vim";
  };
  
  environment.systemPackages = with pkgs; [
    # common
    acl
    tree
    wget
    xsel
    p7zip
    lm_sensors
  ];
}
