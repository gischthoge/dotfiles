{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
decoration {
  rounding = 8
#  multisample_edges = true
  active_opacity = 1.0
  inactive_opacity = 1.0

  blur {
    enabled = true
    size = 3
    passes = 3
    new_optimizations = true
    ignore_opacity = true
  }

  drop_shadow = true
  shadow_ignore_window = true
  shadow_offset = 2 2
  shadow_range = 4
  shadow_render_power = 2
  col.shadow = 0x66000000

  blurls = gtk-layer-shell
  # blurls = waybar
  blurls = lockscreen

  layerrule = blur,waybar
}'';
}
