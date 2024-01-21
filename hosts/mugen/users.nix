{ pkgs, lib, ... }:
{
  users.users.root = {
    shell = "/run/current-system/sw/bin/nologin";
    hashedPassword = null;
  };

  users.users.michael = {
    isNormalUser = true;
    shell = pkgs.fish;
    home = "/home/michael";
    description = "User";
    extraGroups = [ 
      "wheel" 
      "video" 
      "input" 
      "adbusers" 
      "kvm" 
      "docker" 
    ];
  };

  programs.fish.enable = lib.mkForce true;
}
