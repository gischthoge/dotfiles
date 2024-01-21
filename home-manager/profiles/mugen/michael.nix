{ ... }:
{
  home = {
    username = "michael";
    homeDirectory = "/home/michael";
    stateVersion = "23.05";
    keyboard.layout = "us-german-umlaut";

    programs = {
      kitty.enable = true;
      alacritty.enable = true;
      fish.enable = true;
      anyrun.enable = true;
      dunst.enable = true;
      eww.enable = false;
      git.enable = true;
      gtklock = true;
    };

    services = {
      nextcloud-client = {
        enable = true;
        startInBackground = true;
      };
    };
  };
}
