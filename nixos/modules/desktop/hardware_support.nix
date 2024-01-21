{ lib, pkgs, ... }:
{
  hardware = {
    opengl.enable = true;
    bluetooth.enable = true;
    brillo.enable = true;
    xpadneo.enable = true;
    pulseaudio.enable = lib.mkForce false;
  };
  
  hardware.opengl = {
    extraPackages = with pkgs; [
      libva
      vaapiVdpau 
      libvdpau-va-gl
    ];
  };
      
  hardware.bluetooth = {
    settings = {
      General = {
        Class = "0x000100";
        ControllerMode = "bredr";
        FastConnection = true;
        JustWorksRepairing = "always";
        Privacy = "device";
        Experimental = true;
      };
    };
  };

  systemd = {
    services = {
      NetworkManager-wait-online.enable = lib.mkForce false;
    };
    user.services.telephony_client.enable = false;
  };
}
