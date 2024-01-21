{ pkgs, theme,... }:
{
  imports = [ ../../nixos/packages ];

  environment.systemPackages = with pkgs; [
    mpv
    yt-dlp
    texliveSmall
    android-tools
    vuescan
  ] ++ theme.themePackages;
  
  programs = {
    adb.enable = true;
  };

  fonts.packages = theme.fontPackages;
}
