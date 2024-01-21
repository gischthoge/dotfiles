{ inputs, pkgs, theme, ... }:
let
  modules = import ../../modules {
    inherit theme;
  };
in
inputs.hm.nixosModules.home-manager {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = {
      inherit inputs modules theme;
    };
    users.michael = import ./michael.nix;
  };
  # Optionally, use home-manager.extraSpecialArgs to pass
  # arguments to home.nix
}
