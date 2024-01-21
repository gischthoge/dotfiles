{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
input {
  kb_layout = us-german-umlaut
  numlock_by_default = true
  follow_mouse = 1
  sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
  touchpad {
    clickfinger_behavior = 1
    disable_while_typing = 1
    natural_scroll = 1 
    tap-to-click = 1
  }
}

# touchpad gestures
gestures {
  workspace_swipe = true
  workspace_swipe_forever = true
}
'';
}
