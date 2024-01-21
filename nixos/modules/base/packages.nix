{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    file
    htop
    wget
    eza
    bat
  ];

  programs = {
    fish.enable = true;
    zsh.enable = true;
    git.enable = true;
    less.enable = true;

    tmux = {
      enable = true;
      terminal = "screen-256color";
      keyMode = "vi";
      clock24 = true;
      newSession = true;
      plugins = with pkgs.tmuxPlugins; [
        nord
        better-mouse-mode
      ];
    };
  };
}
