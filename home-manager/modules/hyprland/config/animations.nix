{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
animations {
  enabled = true
  bezier = overshot, 0.05, 0.9, 0.1, 1.05
  bezier = smoothOut, 0.36, 0, 0.66, -0.56
  bezier = smoothIn, 0.25, 1, 0.5, 1

  animation = windows, 1, 5, overshot, slide
  animation = windowsOut, 1, 4, smoothOut, slide
  animation = windowsMove, 1, 4, default
  animation = border, 1, 10, default
  animation = fade, 1, 10, smoothIn
  animation = fadeDim, 1, 10, smoothIn
  animation = workspaces, 1, 6, default
}
'';
}
