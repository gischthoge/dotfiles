{ pkgs, ... }:
{
  programs.pywal.enable = true;

  programs.imv = {
    enable = true;
    settings = {
      binds."<Shift+w>" = ''exec ${pkgs.pywal}/bin/wal -i "$imv_current_file"'';
    };
  };
}
