{ theme, ... }:
{
  programs.alacritty = {
    settings.font.normal.family = theme.fonts.terminal;
    settings.font.size = theme.fontsize.terminal;
  };
}
