{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should manage
  home.username = "harrison";
  home.homeDirectory = "/Users/harrison";

  # Allow unfree packages (necessary for some apps)
  nixpkgs.config.allowUnfree = true;

  # Packages to install
  home.packages = with pkgs; [
    # CLI tools
    git
    fish
    wget
    tmux
    vim
    emacs

    # GUI Applications
    coconutbattery
    monitorcontrol
    obs-studio
    android-file-transfer
    postman
    disk-inventory-x
    vlc
    audacity
    blender
    transmission_4
    iterm2
    vscode
    realvnc-vnc-viewer
    appcleaner
    sqlitebrowser
    webtorrent_desktop
    zoom-us
    arc-browser
    mountain-duck
    handbrake
    utm
    tor-browser
    inkscape
    gimp
    popcorntime
    darktable
    signal-desktop
    docker
    whatsapp-for-mac
    qgis
  ];

  # This tells Home Manager to manage itself
  programs.home-manager.enable = true;

  # Specify Home Manager version
  home.stateVersion = "25.05"; # Update with current version
}
