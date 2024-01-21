{ pkgs, ... }:
{
  services = {
    avahi.enable = true;
    dbus.enable = true;
    printing.enable = true;
    pipewire.enable = true;
    clight.enable = true;
    upower.enable = true;
    gnome.gnome-keyring.enable = true;
    power-profiles-daemon.enable = true;
    geoclue2.enable = true;
  };
    
  services.avahi = {
    nssmdns = true;
    openFirewall = true;
  };

  services.dbus = {
    packages = [ pkgs.gcr ];
    implementation = "broker";
  };

  services.printing = {
    drivers = with pkgs; [ samsung-unified-linux-driver hplip ];
  };

  services.pipewire = {
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.clight = {
    settings = {
      verbose = true;
      backlight.disabled = true;
      dpms.timeouts = [900 300];
      dimmer.timeouts = [870 270];
      gamma.long_transition = false;
      screen.disabled = true;
    };
  };
}
