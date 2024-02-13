{ config, ... }:
#let
#  inherit (config.programs.matugen) variant;
#  c = config.programs.matugen.theme.colors.colors_android.${variant};
#  pointer = config.home.pointerCursor;
#  scriptDir = "${config.home.homeDirectory}/.config/eww/scripts";
#in
{  
  imports = [
    ./bindings.nix
    ./windowrules.nix
    ./workspacerules.nix
    ./animations.nix
    ./decoration.nix
    ./general.nix
    ./monitor.nix
    ./input.nix
    ./exec.nix
  ];

#  wayland.windowManager.hyprland.extraConfig = ''
#    exec-once = hyprctl setcursor ${pointer.name} ${toString pointer.size}
#    bind = SUPER, Space, exec, pkill .anyrun-wrapped || anyrun
#  '';
    #bind = SUPER, Space, exec, pkill .${default.launcher}-wrapped || ${default.launcher}
}
