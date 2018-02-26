{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # themes
    paper-gtk-theme
    paper-icon-theme
    gnome3.gnome-disk-utility
    arc-theme
    arc-icon-theme

    # disk utilities
    parted
    gptfdisk
    cryptsetup
    ntfs3g
  ];

  services.xserver = {
    enable = true;
    layout = "us";
    xkbOptions = "eurosign:e";

    displayManager.gdm.enable = true;
    desktopManager = {
      gnome3.enable = true;
      kodi.enable = true; 
    };
  };

  services.gnome3 = {
    gnome-documents.enable = false;
    gnome-user-share.enable = false;
    gnome-online-miners.enable = false;
    gnome-keyring.enable = true;
  };
}

