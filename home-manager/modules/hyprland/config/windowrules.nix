{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
windowrule = float, file_progress
windowrule = float, confirm
windowrule = float, dialog
windowrule = float, download
windowrule = float, notification
windowrule = float, error
windowrule = float, splash
windowrule = float, confirmreset
windowrule = float, title:Open File
windowrule = float, title:branchdialog
windowrule = float, Lxappearance
windowrule = float, Rofi
windowrule = animation none,Rofi
windowrule = float,viewnior
windowrule = float,feh
windowrule = float, pavucontrol-qt
windowrule = float, pavucontrol
windowrule = float, file-roller
windowrule = fullscreen, wlogout
windowrule = float, title:wlogout
windowrule = fullscreen, title:wlogout
windowrule = idleinhibit focus, mpv
windowrule = idleinhibit fullscreen, firefox
windowrule = float, title:^(Media viewer)$
windowrule = float, title:^(Volume Control)$
windowrule = float, title:^(Picture-in-Picture)$
windowrule = size 800 600, title:^(Volume Control)$
windowrule = move 75 44%, title:^(Volume Control)$
'';
}
