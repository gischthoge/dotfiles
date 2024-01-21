{ config, lib, theme, pkgs, ... }:
{
  programs.regreet = {
    enable = true;
    cageArgs = [ "-s" "-m" "last" ];
    settings = {
      background = {
        path = theme.greeter_wallpaper;
        fit = "Fill";
      };

      gtk = {
        application_prefer_dark_theme = theme.gtk_theme.preferDark;
        cursor_theme_name = theme.cursor_theme.name;
        font_name = theme.fonts.sans;
        icon_theme = theme.icon_theme.name;
        theme_name = theme.gtk_theme.name;
      };

      commands = {
        reboot = [ "systemctl" "reboot" ];
        poweroff = ["systemctl" "poweroff" ];
      };
    };
  };
  
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
