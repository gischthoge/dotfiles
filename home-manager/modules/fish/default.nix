
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fzf
    grc
    eza
    bat
    fishPlugins.done
    fishPlugins.fzf-fish
    fishPlugins.forgit
    fishPlugins.tide
    fishPlugins.z
    fishPlugins.grc
    babelfish
  ];

  programs.fish = {
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';

    shellAliases = {
      ls = "exa -la";
      edit = "givim";
    };

    plugins = [
      { name = "grc"; src = pkgs.fishPlugins.grc.src; }
      { name = "tide"; src = pkgs.fishPlugins.tide.src; }
      { name = "fzf"; src = pkgs.fishPlugins.fzf-fish.src; }
      { name = "forgit"; src = pkgs.fishPlugins.forgit.src; }
      { name = "done"; src = pkgs.fishPlugins.done.src; }
      { name = "z"; src = pkgs.fishPlugins.z.src; }
      { name = "babelfish"; src = pkgs.babelfish.src; }
    ];
  };
}
