{ pkgs, ... }: {
  imports = [
    ./config
  ];

  home.packages = with pkgs; [
#    jaq
#    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
    hyprland-autoname-workspaces
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
  };

  xdg.systemDirs.data = let 
      schema = pkgs.gsettings-desktop-schemas;
      datadir = "${schema}/share/gsettings-schemas/${schema.name}";
  in [ datadir ];
   
}
