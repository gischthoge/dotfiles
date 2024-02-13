{ inputs, ... }:
{
  home = {
    username = "michael";
    homeDirectory = "/home/michael";
    stateVersion = "23.05";
    keyboard.layout = "us-german-umlaut";

  };

  programs = {
      kitty.enable = true;
      alacritty.enable = true;
      fish.enable = true;
      anyrun.enable = true;
      eww.enable = false;
      git.enable = true;
    };

    services = {
      nextcloud-client = {
        enable = true;
        startInBackground = true;
      };
     # dunst.enable = true;
    };
  imports = [
      inputs.anyrun.homeManagerModules.default
      
      ../../modules/alacritty 
      ../../modules/kitty 
      ../../modules/fish 
      ../../modules/anyrun

      ../../files/keyboard_layout.nix
      ../../modules/hyprland 
    #../../modules
    ];
}
