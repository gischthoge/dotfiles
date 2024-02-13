{ self,  ... }:
{
  inherit self;
  imports = [
    ./alacritty
#    ./anyrun
    ./dunst 
#    ./eww
    ./fish
    ./git
#    ./gtklock
    ./hyprland
    ./imv
    ./kitty
    ./nextcloud_client
#    ./python
    ./sway
#    ./texlive
    ./waybar
    ./zsh
  ];
}
  
