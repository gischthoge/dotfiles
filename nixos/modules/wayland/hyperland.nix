{  pkgs, ... }:
{

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    kitty
    alacritty
    alacritty-theme
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
    jaq
  ];
}
