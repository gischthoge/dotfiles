{ config, lib, pkgs, ... }:

with lib;

let
  options = {
    enable = mkOption {
      default = false;
      type = types.bool;
      description = "Enable Basic Desktop Configuration";
    };

    android = {
      enable = mkOption {
        default = false;
        type = types.bool;
        description = "Enable Android development tools and install Android studio";
      };
      users = mkOption {
        default = [ ];
        type = types.listOf types.string;
        description = "Users which should be added to the 'adbusers' group";
      };
    };
  };
in
{
  options = options;
  config = mkIf config.desktop.enable {
    
    hardware = {
      opengl = {
        enable = true;
        extraPackages = with pkgs; [
          libva
          vaapiVdpau
          libvdpau-va-gl
        ];
      };
      
      bluetooth = {
        enable = true;
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

      brillo.enable = true;
      xpadneo.enable = true;
      pulseaudio.enable = mkForce false;
    };

    networking = {
      useDHCP = mkDefault true;
      networkmanager = {
        enable = true;
        wifi.powersave = true;
      };

      nameservers = [ "9.9.9.9" "2620:fe::fe" ];
    };

    systemd = {
      services = {
        NetworkManager-wait-online.enable = mkForce false;
      };
      user.services.telephony_client.enable = false;
    };

    services = {
      avahi = {
        enable = true;
        nssmdns = true;
        openFirewall = true;
      };

      dbus = {
        enable = true;
        packages = [ pkgs.gcr ];
        implementation = "broker";
      };

      printing = {
        enable = true;
        drivers = with pkgs; [ samsung-unified-linux-driver hplip ];
      };

      pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;
      };

      upower.enable = true;
      gnome.gnome-keyring.enable = true;
      power-profiles-daemon.enable = true;
    };
  

    # Location providers
    location.provider = "geoclue2";
    services.geoclue2.enable = true;

    programs.adb = mkIf config.desktop.android.enable {
      enable = true;
    };
  };

  adb_conf = mkIf config.desktop.android.enable {
    programs.adb.enable = true;

    security.groups.adbusers.members = config.desktop.android.users;
  };
}

