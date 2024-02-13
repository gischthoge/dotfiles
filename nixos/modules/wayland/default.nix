{ pkgs, ... }:
{
  
  # Enable Authentication Agent for Sway/Hyprland
  systemd = {
    user.services.polkit-kde-authentication-agent-1 = {
      description = "polkit-kde-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.libsForQt5.polkit-kde-agent}/libexec/polkit-kde-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };

  #use Wayland where possible (electron)
  environment.variables.NIXOS_OZONE_WL = "1";
  
  imports = [
    ./hyperland.nix
  ];
}
