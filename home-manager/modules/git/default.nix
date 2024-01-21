{ pkgs, ... }:
{
  home.packages = with pkgs; [
    git-crypt
  ];

  programs.git = {
    enable = true;
    userName = "Michael Schäfer";
    userEmail = "gischthoge@mailbox.org";
  };

  programs.gpg.enable = pkgs.stdenv.isLinux;
  services.gpg-agent.enable = pkgs.stdenv.isLinux;
}
