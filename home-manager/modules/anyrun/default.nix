
{ pkgs, inputs, theme, self, ...}: {

  programs.anyrun = {
    config = {
      plugins = with inputs.anyrun.packages.${pkgs.system}; [
        applications
        randr
        rink
        shell
        symbols
        dictionary
        translate
        websearch
#        kidex
      ];

      width.fraction = 0.3;
      y.absolute = 15;
      hidePluginInfo = true;
      closeOnClick = true;
    };

    extraCss = builtins.readFile "${self}/home-manager/modules/anyrun/styles/anyrun_dark.css";

    extraConfigFiles."websearch.ron".text = ''
      Config (
        prefix: "?",
        Custom(
          name: "NixPackages",
          url: "https://search.nixos.org/packages?channel=unstable&size=50&sort=relevance&type=packages&query={}",
        )
        engines: [Google, NixPackages]
      )
    '';
  };

}
