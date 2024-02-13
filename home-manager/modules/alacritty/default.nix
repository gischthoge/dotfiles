{ pkgs, theme, ... }:
{
  programs.alacritty = {
    settings.import = [
      "${pkgs.alacritty-theme}/${theme.themename.alacritty}.toml"
    ];

    settings.font.normal.family = theme.fonts.terminal;
    settings.font.size = theme.fontsize.terminal;
  };
}
