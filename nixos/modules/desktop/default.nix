{ ... }:
{
  imports = [
    ./hardware_support.nix
    ./security.nix
    ./services.nix
    ./fonts.nix
    ./flatpak.nix
    ./wayland.nix
  ];

  location.provider = "geoclue2";
}
