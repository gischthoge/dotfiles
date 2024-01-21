{ pkgs, default, lib, config, ... }:
{
  wayland.windowManager.sway.config = {
    modifier = "Mod4";
    
    terminal = "${pkgs.kitty}/bin/kitty";
    
    left = "h";
    right = "l";
    up = "k";
    down = "j";

    window.border = 2;

    gaps = {
      inner = 4;
      smartBorders = "on";
      smartGaps = true;
    };

    menu = "${pkgs.wofi}/bin/wofi --show drun";

    output = {
      "*" = {
        bg = "${default.wallpaper} fill";
      };
      eDP-1 = {
        scale = "1.5";
      };
      DP-3 = {
        scale = "2";
      };
    };

    imports = [ 
      ./keybindings.nix
    ];
  };
}
