{  pkgs, ... }:
{
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    kitty
    alacritty
    alacritty-themes
    glib
    dconf
    grim
    grimblast
    slurp
    wf-recorder
    wl-clipboard
    wlogout
    wlr-randr
    eww-wayland 
    waybar
    dunst
    gtklock
    wofi
    rofi-wayland
    ja
  ];
}
