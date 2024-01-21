{ pkgs, ... }:
let
  ewwbar = pkgs.writeShellScriptBin "ewwbar" (builtins.readFile ./scripts/ewwbar.sh);
in {
#  programs.eww = {
#    enable = true;
#    package = pkgs.eww-wayland;
#    configDir = ./config;
#  };
  home.packages = [ 
    pkgs.eww-wayland
    pkgs.jq
    ewwbar
  ];
}
