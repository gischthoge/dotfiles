{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
#bind = SUPER, B, exec, /nix/store/vn6cpkws7cb3p5ydhh9i5dh6x6sl6482-floorp-11.6.0/bin/.floorp-wrapped --name floorp
bind = SUPER, B, exec, floorp
bind = SUPER, L, exec, /home/titus/w11
bind = SUPER, P, exec, wlogout
bind = SUPER, F1, exec, ~/.config/hypr/keybind

binde=, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
binde=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
binde=, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
bind=, XF86AudioPlay, exec, playerctl play-pause
bind=, XF86AudioPause, exec, playerctl play-pause
bind=, XF86AudioNext, exec, playerctl next
bind=, XF86AudioPrev, exec, playerctl previous

$screenshotarea = hyprctl keyword animation "fadeOut,0,0,default"; grimblast --notify copysave area; hyprctl keyword animation "fadeOut,1,4,default"
bind = SUPER SHIFT, S, exec, $screenshotarea
bind = , Print, exec, grimblast --notify --cursor copysave output
bind = ALT, Print, exec, grimblast --notify --cursor copysave screen

bind = SUPER SHIFT, X, exec, hyprpicker -a -n
bind = CTRL ALT, L, exec, swaylock -c 000000
bind = SUPER, Return, exec, kitty
bind = SUPER, X, exec, kitty
bind = SUPER, E, exec, thunar
#bind = SUPER, R, exec, killall rofi || rofi -show drun -theme ~/.config/rofi/global/rofi.rasi
bind = SUPER, D, exec, killall wofi || wofi --show drun
bind = SUPER, R, exec, fuzzel
bind = SUPER, period, exec, killall rofi || rofi -show emoji -emoji-format "{emoji}" -modi emoji -theme ~/.config/rofi/global/emoji
bind = SUPER, escape, exec, wlogout --protocol layer-shell -b 5 -T 400 -B 400

bind = SUPER, Q, killactive,
bind = SUPER SHIFT, Q, exit,
bind = SUPER, F, fullscreen,
bind = SUPER SHIFT, F, togglefloating,
bind = SUPER, P, pseudo, # dwindle
bind = SUPER, S, togglesplit, # dwindle

# bind=,Print,exec,grim $(xdg-user-dir PICTURES)/Screenshots/$(date +'%Y%m%d%H%M%S_1.png') && notify-send 'Screenshot Saved'
# bind=SUPER,Print,exec,grim - | wl-copy && notify-send 'Screenshot Copied to Clipboard'
# bind=SUPERSHIFT,Print,exec,grim - | swappy -f -
# bind=SUPERSHIFT,S,exec,slurp | grim -g - $(xdg-user-dir PICTURES)/Screenshots/$(date +'%Y%m%d%H%M%S_1.png') && notify-send 'Screenshot Saved'

bind = SUPER, left, movefocus, l
bind = SUPER, right, movefocus, r
bind = SUPER, up, movefocus, u
bind = SUPER, down, movefocus, d

bind = SUPER SHIFT, left, movewindow, l
bind = SUPER SHIFT, right, movewindow, r
bind = SUPER SHIFT, up, movewindow, u
bind = SUPER SHIFT, down, movewindow, d

bind = SUPER CTRL, left, resizeactive, -20 0
bind = SUPER CTRL, right, resizeactive, 20 0
bind = SUPER CTRL, up, resizeactive, 0 -20
bind = SUPER CTRL, down, resizeactive, 0 20

bind= SUPER, g, togglegroup,
bind= SUPER, tab, changegroupactive,

bind = SUPERSHIFT, grave, movetoworkspace, special

bind = SUPER, 1, workspace, 1
bind = SUPER, 2, workspace, 2
bind = SUPER, 3, workspace, 3
bind = SUPER, 4, workspace, 4
bind = SUPER, 5, workspace, 5
bind = SUPER, 6, workspace, 6
bind = SUPER, 7, workspace, 7
bind = SUPER, 8, workspace, 8
bind = SUPER, 9, workspace, 9
bind = SUPER, 0, workspace, 10
bind = SUPER ALT, up, workspace, e+1
bind = SUPER ALT, down, workspace, e-1

bind = SUPER SHIFT, 1, movetoworkspace, 1
bind = SUPER SHIFT, 2, movetoworkspace, 2
bind = SUPER SHIFT, 3, movetoworkspace, 3
bind = SUPER SHIFT, 4, movetoworkspace, 4
bind = SUPER SHIFT, 5, movetoworkspace, 5
bind = SUPER SHIFT, 6, movetoworkspace, 6
bind = SUPER SHIFT, 7, movetoworkspace, 7
bind = SUPER SHIFT, 8, movetoworkspace, 8
bind = SUPER SHIFT, 9, movetoworkspace, 9
bind = SUPER SHIFT, 0, movetoworkspace, 10

bindm = SUPER, mouse:272, movewindow
bindm = SUPER, mouse:273, resizewindow
bind = SUPER, mouse_down, workspace, e+1
bind = SUPER, mouse_up, workspace, e-1
'';
}
