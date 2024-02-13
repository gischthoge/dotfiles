{ config, lib, theme, pkgs, ... }:
{
  imports = [ 
    ./regreet.nix
  ];

  services.greetd = {
    enable = true;
    vt = 1;
    restart = !(config.services.greetd.settings ? initial_session);
#    settings = {
#      default_session = {
#        command = "${pkgs.cage}/bin/cage -s -- ${pkgs.greetd.regreet}/bin/regreet";
#      };
#    };
  };
}
