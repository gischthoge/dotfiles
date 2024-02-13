{ self, nixpkgs, system, inputs, ... }:
let
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };

  theme = import ../../themes/tokyo_night.nix {
    inherit self pkgs;
  };

in nixpkgs.lib.nixosSystem {
  specialArgs = { inherit pkgs inputs theme self; };

  modules = [
    ./hardware-configuration.nix
    ./configuration.nix
    ./networking.nix
    ./users.nix
    ./services.nix
    ./packages.nix
    ./virtualisation.nix

    ../../nixos/modules/base 
    ../../nixos/modules/desktop 
    ../../nixos/modules/wayland 
    ../../nixos/modules/greetd

    ../../home-manager/profiles/mugen
  ];
}
