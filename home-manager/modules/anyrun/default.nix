
{ pkgs, inputs, config, self, ...}: {

  programs.anyrun = {
    config = {
      plugins = with inputs.anyrun.packages.${pkgs.system}; [
        applications
        randr
        rink
        shell
        symbols
      ];

      width.fraction = 0.3;
      y.absolute = 15;
      hidePluginInfo = true;
      closeOnClick = true;
    };

    extraCss = builtins.readFile "${self}/styles/anyrun_dark.css";
  };
}
