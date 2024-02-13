{ self, pkgs, ... }:
{
  themename = { 
    default = "Tokyo Night";
    kitty = "Tokyo Night";
    alacritty = "tokyo-night";
  };

  cursor_theme.name = "Bibata-Modern-Classic";
  cursor_theme.size = 24;

  icon_theme.name = "Papirus-Dark";
  
  gtk_theme.name = "Tokyonight-B";
  gtk_theme.preferDark = true;

  fonts = {
    serif = "LibreBaskerville";
    sans = "WorkSans";
    mono = "JuliaMono";
    terminal = "JuliaMono";
    cjk = "Noto Sans";
    emoji = "Noto Color Emoji";
    icon = "Font Awesome 6";
  };

  fontsize = {
    terminal = 16;
  };

  themePackages = with pkgs; [
    bibata-cursors
    papirus-icon-theme
    tokyo-night-gtk
  ];

  fontPackages = with pkgs; [
    libre-baskerville
    work-sans
    julia-mono
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    font-awesome
  ];
}
