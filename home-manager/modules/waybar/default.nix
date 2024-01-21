{ ... }: 
{
  programs.waybar = {

    style = (builtins.readFile ./style.css);

    settings = {
    mainBar = {
    layer = "top";
    position = "top";
    height = 42;
    spacing = 4;
    margin-top = 0;
    margin-bottom = 0;
    margin-left = 0;
    margin-right = 0;
    gtk-layer-shell = true;

    modules-left = [
      "hyprland/workspaces"
      "hyprland/submap"
      "sway/workspaces"
      "sway/mode"
    ];

    modules-center = [
      "clock"
    ];

    modules-right = [
      "wireplumber"
      "network#wlo1"
      "bluetooth"
      "battery"
      "tray"
      "clock"
    ];

    "hyprland/workspaces" = {
      all-outputs = true;
      format = "{name}: {icon}";
      format-window-separator = " ";
      window-rewrite-default = "";
#      window-rewrite = {
#        "(.*)Brave" = "";
#        "(.*)Librewolf" = "";
#        "(.*)kitty" = "";
#        "(.*)android" = "";
#      };
      format-icons = {
        "1" = "";
		    "2" = "";
		    "3" = "";
		    "4" = "";
		    "5" = "";
        urgend = "";
        active = "";
		    default = "";
      };
    };

    "hyprland/submap" = {
      format = "{}";
      tooltip = false;
    };

    "hyprland/window" = {
      format = "👉 {}";
      rewrite = {
        "(.*) — Mozilla Firefox" = "🌎 $1";
        "(.*) - fish" = "> [$1]";
      };
      separate-outputs = false;
    };

    "sway/workspaces" = {
      all-outputs = true;
      format = "{icon}";
      format-icons = {
        urgend = "";
        focused = "";
        default = "";
      };
    };

    "sway/mode" = {
      format = "{}";
      tooltip = false;
    };

    "tray" = {
      icon-size = 18;
      spacing = 10;
    };

    "clock" = {
      interval = 60;
      format = "{:󰥔 %H:%M}";
      format-alt = "{:󰣆 %Y-%m-%d | 󰥔 %H:%M}";
      tooltip-format = "<tt><small>{calendar}</small></tt>";
      calendar = {
        mode = "year";
        mode-mon-col = 3;
        weeks-pos = "right";
        on-scroll = 1;
        on-click-right = "mode";
        format = {
          months = "<span color='#ffead3'><b>{}</b></span>";
          days = "<span color='#ecc6d9'><b>{}</b></span>";
          weeks = "<span color='#99ffdd'><b>W{}</b></span>";
          weekdays = "<span color='#ffcc66'><b>{}</b></span>";
          today = "<span color='#ff6699'><b><u>{}</u></b></span>";
        };
      };

      actions = {
        on-click-right = "mode";
        on-click-forward = "tz_up";
        on-click-backward = "tz_down";
        on-scroll-up = "shift_up";
        on-scroll-down = "shift_down";
      };
    };

    "cpu" = {
      format = "󰻠 {usage}%";
      on-click = "";
      tooltip = false;
    };

    "memory" = {
      format = "󰍛 {used:0.1f}GB ({percentage}%) / {total:0.1f}GB";
      on-click = "";
      tooltip = false;
    };

    "temperature" = {
      critical-threshold = 80;
      format = "{temperatureC}°C {icon}";
      format-icons = [
        "" "" ""
      ];
    };

    "backlight" = {
      format = "{percent}% {icon}";
      format-icons = [
        "" "" "" "" "" "" "" "" ""
      ];
    };

    "battery" = {
      states = {
        warning = 30;
        critical = 15;
      };
      format = "{icon} {capacity}%";
      format-charging = "󰂄 {capacity}%";
      format-plugged = "󱘖 {capacity}%";
      format-icons = [
        "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"
      ];
      on-click = "";
      tooltip = false;
    };

    "bluetooth" = {
      format-disabled = "";
      format-off = "";
      format-on = "󰂯";
      format-connected = "󰂯";
      format-connected-battery = "󰂯";
      tooltip-format-connected = "{device_alias} 󰂄{device_battery_percentage}%";
      on-click = "";
      tooltip = true;

    };

    "wireplumber" = {
      format = "{icon} {volume}%";
      format-muted = " ";
      on-click = "helvum";
      format-icons = [
        "" "" " "
      ];
    };

    "network#wlo1" = {
      interval = 1;
      interface = "wlo1";
      format-wifi = "{icon} {essid} ({signalStrength}%)";
      format-disconnected = "";
      format-icons = [
        "󰤯" "󰤟" "󰤢" "󰤥" "󰤨"
      ];
    };
  };
  };
}
