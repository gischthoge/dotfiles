{ pkgs, ... }:
{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    configPackages = with pkgs; [ 
      xdg-desktop-portal-wlr 
      xdg-desktop-portal-gtk 
      xdg-desktop-portal-hyprland
    ];
    config = {
      common = {
        default = [ "gtk" ];
      };
    };
  };
}
