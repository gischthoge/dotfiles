{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
$mod = SUPER

env = _JAVA_AWT_WM_NONREPARENTING,1
env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1
env = WLR_DRM_NO_ATOMIC,1
env = XDG_SESSION_DESKTOP=Hyprland
env = XDG_CURRENT_DESKTOP=Hyprland
env = QT_AUTO_SCREEN_SCALE_FACTOR=0;
env = QT_SCALE_FACTOR=1.5;
env = ADW_DEBUG_COLOR_SCHEME=prefer-dark;

general {
  gaps_in=5
  gaps_out=5
  border_size=0
  no_border_on_floating = true
  layout = dwindle
}

misc {
  disable_hyprland_logo = true
  disable_splash_rendering = true
  mouse_move_enables_dpms = true
  enable_swallow = true
  swallow_regex = ^(kitty)$
}

dwindle {
  no_gaps_when_only = false
  pseudotile = true # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
  preserve_split = true # you probably want this
}'';
}
