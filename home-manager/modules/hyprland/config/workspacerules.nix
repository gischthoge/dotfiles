{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
    workspace = 1, monitor:eDP-1, default:true
    workspace = 2, monitor:eDP-1, default:false
    workspace = 3, monitor:eDP-1, default:false
    
    workspace = 4, monitor:DP-1, default:true on-created-empty:[float] kitty
    workspace = 5, monitor:DP-1, default:false
    workspace = 6, monitor:DP-1, default:false
    
    workspace = 7, monitor:DP-3, default:true
    workspace = 8, monitor:DP-3, default:false
    workspace = 9, monitor:DP-3, default:false
  '';
}
