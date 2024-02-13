{ ... }:
{
  imports = [
    ./hardware_support.nix
    ./security.nix
    ./services.nix
    ./fonts.nix
    ./portals.nix
    ./flatpak.nix
  ];

  location.provider = "geoclue2";
}
