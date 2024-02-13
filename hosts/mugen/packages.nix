{ pkgs, theme, inputs, ... }:
let
  vuescan = pkgs.callPackage ../../nixos/packages/vuescan.nix {};
in
{

  environment.systemPackages = with pkgs; [
    mpv
    yt-dlp
    anki
    floorp
    brave
    thunderbird
    texliveTeTeX
    android-tools
    android-studio
    gimp
    poetry
    paps
    sqlite
    litecli
    
    filezilla
    zathura
    dbeaver
    ausweisapp
    libreoffice-fresh
    image-roll
    keepassxc
    swww
    eww-wayland

    libsForQt5.okular
    libsForQt5.kdeconnect-kde
    
    evince
    gnome.gnome-maps
    gnome.nautilus
    gnome.sushi

    vuescan
    inputs.givim.packages.${pkgs.system}.default
    inputs.anyrun.packages.${pkgs.system}.anyrun

  ] ++ theme.themePackages;
  
  programs = {
    adb.enable = true;
  };

  fonts.packages = theme.fontPackages;
}
