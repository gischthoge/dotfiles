{ theme, ... }: 
{
  programs.kitty = {
    enable = true;
    font = {
      name = theme.fonts.terminal;
      size = theme.fontsize.terminal;
    };
    theme = theme.themename.kitty;
  };
}
