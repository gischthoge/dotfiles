{ lib, ... }:
{
  networking = {
    hostName = "mugen";
    useDHCP = lib.mkDefault true;
    networkmanager = {
      enable = true;
      wifi.powersave = true;
    };

    nameservers = [ "9.9.9.9" "2620:fe::fe" ];
  };
}
