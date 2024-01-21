{ config, pkgs, ... }: 
{
  services.flatpak.enable = true;
  environment.systemPackages = with pkgs; [
    libportal
    libportal-qt5
    libportal-gtk4
    libportal-gtk3
  ];

  # Make fonts and icons accessable for flatpak
  system.fsPackages = [ pkgs.bindfs ];

  fileSystems = let
    mkRoSymBind = path : {
      device = path;
      fsType = "fuse.bindfs";
      options = [ "ro" "resolve-symlinks" "x-gvfs-hide" ];
    };
    aggregateFonts = pkgs.buildEnv {
      name = "system-fonts";
      paths = config.fonts.packages;
      pathsToLink = [ "/share/fonts" ];
    };
  in {
    "/usr/share/icons" = mkRoSymBind (config.system.path + "/share/icons");
    "/usr/share/fonts" = mkRoSymBind (aggregateFonts + "/share/fonts");
  };
}
