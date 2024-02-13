{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
exec-once = wl-clipboard-history -t
exec-once = ~/.config/hypr/xdg-portal-hyprland
exec-once = configure-gtk
exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
exec-once = systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
#exec-once = /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
exec-once = /etc/profiles/per-user/michael/bin/polkit-kde-authentication-agent
exec-once = hyprland-autoname-workspaces
#exec-once = waybar
#exec-once = chstyle restore

#exec-once = wlsunset -S 9:00 -s 19:30
#exec-once = systemctl --user start clight

exec-once = swww init
exec-once = ewwbar

'';
}
