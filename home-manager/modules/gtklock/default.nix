{ pkgs, config, self, ... }: {
  home.packages = with pkgs; [gtklock];

  xdg.configFile."gtklock/style.css".source = "${self}/modules/wayland/gtklock/style-dark.css";
}
