{ pkgs, theme, ... }:
{
  fonts = {
    packages = with pkgs; [
      material-symbols
      line-awesome
      font-awesome
      nerdfonts
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      roboto
    ] ++ theme.fontPackages;

    enableDefaultPackages = true;

    fontconfig.defaultFonts = {
      serif = [ theme.fonts.serif theme.fonts.emoji ];
      sansSerif = [ theme.fonts.sans theme.fonts.emoji];
      monospace = [ theme.fonts.mono theme.fonts.emoji];
      emoji = [ theme.fonts.emoji ];
    };
  };
}
