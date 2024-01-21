
{ ... }:
{
#  programs.fzf.enableZshIntegration = true;
#  programs.starship.enableZshIntegration = true;

  programs.zsh = {
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ls = "exa -la";
    };
  };
}
