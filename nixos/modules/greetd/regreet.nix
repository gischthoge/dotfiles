{ self, theme, ...}:
{
  programs.regreet = {
    enable = true;
    cageArgs = [ "-s" "-m" "last" ];
    settings = {
      background = {
        path = "${self}/nixos/modules/greetd/wallpaper/wp1.png";
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
}
