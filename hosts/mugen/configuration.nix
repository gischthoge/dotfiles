{ ...}:
{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      efi.efiSysMountPoint = "/boot/efi";
    };

    initrd = {
      secrets = { "/crypto_keyfile.bin" = null; };
      # Enable swap on luks
      luks.devices."luks-582ed492-e247-4d80-897d-ca2ec7879ae6".device = "/dev/disk/by-uuid/582ed492-e247-4d80-897d-ca2ec7879ae6";
      luks.devices."luks-582ed492-e247-4d80-897d-ca2ec7879ae6".keyFile = "/crypto_keyfile.bin";
    };

#    kernelPackages = pkgs.linuxPackages_latest; 
  };
  
  system.stateVersion = "23.11";
}
