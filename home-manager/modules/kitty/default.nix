{ theme, ... }: 
{
  programs.kitty = {
    font = {
      name = theme.fonts.terminal;
      size = theme.fontsize.terminal;
    };
  };
}
