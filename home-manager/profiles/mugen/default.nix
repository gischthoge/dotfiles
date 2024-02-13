{ config, pkgs, inputs, lib, theme, self, ... }:
{
  imports = [ 
    inputs.hm.nixosModules.home-manager
  ];
  
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = {
      inherit inputs theme self;
    };
    users.michael = import ./michael.nix;
  };
  # Optionally, use home-manager.extraSpecialArgs to pass
  # arguments to home.nix
}
