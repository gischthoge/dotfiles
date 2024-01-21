{ lib, config, ... }:
{
  wayland.windowManager.sway.config.keybindings = let
    modifier = config.wayland.windowManager.sway.config.modifier;
    terminal = config.wayland.windowManager.sway.config.terminal;
    menu = config.wayland.windowManager.sway.config.menu;
    left = config.wayland.windowManager.sway.config.left;
    right = config.wayland.windowManager.sway.config.right;
    up = config.wayland.windowManager.sway.config.up;
    down = config.wayland.windowManager.sway.config.down;
  in
  lib.mkOptionsDefault {
    "${modifier}+Return" = "exec ${terminal}";
    "${modifier}+Shift+q" = "kill";
    "${modifier}+d" = "exec ${menu}";
    "${modifier}+Shift+c" = "reload";
    
    "${modifier}+Shift+e" = "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -B 'Yes, exit sway' 'swaymsg exit'";
    
    # Move your focus around
    "${modifier}+${left}" = "focus left";
    "${modifier}+${down}" = "focus down";
    "${modifier}+${up}" = "focus up";
    "${modifier}+${right}" = "focus right";
    # Or use $mod+[up|down|left|right]
    "${modifier}+Left" = "focus left";
    "${modifier}+Down" = "focus down";
    "${modifier}+Up" = "focus up";
    "${modifier}+Right" = "focus right";

    # Move the focused window with the same, but add Shift
    "${modifier}+Shift+${left}" = "move left";
    "${modifier}+Shift+${down}" = "move down";
    "${modifier}+Shift+${up}" = "move up";
    "${modifier}+Shift+${right}" = "move right";
    # Ditto, with arrow keys
    "${modifier}+Shift+Left" = "move left";
    "${modifier}+Shift+Down" = "move down";
    "${modifier}+Shift+Up" = "move up";
    "${modifier}+Shift+Right" = "move right";
#
# Workspaces:
#
    # Switch to workspace
    "${modifier}+1" = "workspace number 1";
    "${modifier}+2" = "workspace number 2";
    "${modifier}+3" = "workspace number 3";
    "${modifier}+4" = "workspace number 4";
    "${modifier}+5" = "workspace number 5";
    "${modifier}+6" = "workspace number 6";
    "${modifier}+7" = "workspace number 7";
    "${modifier}+8" = "workspace number 8";
    "${modifier}+9" = "workspace number 9";
    "${modifier}+0" = "workspace number 10";
    # Move focused container to workspace
    "${modifier}+Shift+1" = "move container to workspace number 1";
    "${modifier}+Shift+2" = "move container to workspace number 2";
    "${modifier}+Shift+3" = "move container to workspace number 3";
    "${modifier}+Shift+4" = "move container to workspace number 4";
    "${modifier}+Shift+5" = "move container to workspace number 5";
    "${modifier}+Shift+6" = "move container to workspace number 6";
    "${modifier}+Shift+7" = "move container to workspace number 7";
    "${modifier}+Shift+8" = "move container to workspace number 8";
    "${modifier}+Shift+9" = "move container to workspace number 9";
    "${modifier}+Shift+0" = "move container to workspace number 10";
    # Note: workspaces can have any name you want, not just numbers.
    # We just use 1-10 as the default.
#
# Layout stuff:
#
    # You can "split" the current object of your focus with
    # $mod+b or $mod+v, for horizontal and vertical splits
    # respectively.
    "${modifier}+b" = "splith";
    "${modifier}+v" = "splitv";

    # Switch the current container between different layout styles
    "${modifier}+s" = "layout stacking";
    "${modifier}+w" = "layout tabbed";
    "${modifier}+e" = "layout toggle split";

    # Make the current focus fullscreen
    "${modifier}+f" = "fullscreen";

    # Toggle the current focus between tiling and floating mode
    "${modifier}+Shift+space" = "floating toggle";

    # Swap focus between the tiling area and the floating area
    "${modifier}+space" = "focus mode_toggle";

    # Move focus to the parent container
    "${modifier}+a" = "focus parent";
#
# Scratchpad:
#
    # Sway has a "scratchpad", which is a bag of holding for windows.
    # You can send windows there and get them back later.

    # Move the currently focused window to the scratchpad
    "${modifier}+Shift+minus" = "move scratchpad";

    # Show the next scratchpad window or hide the focused scratchpad window.
    # If there are multiple scratchpad windows, this command cycles through them.
    "${modifier}+minus" = "scratchpad show";
    
    "${modifier}+r" = ''mode "resize"'';
  };
}
