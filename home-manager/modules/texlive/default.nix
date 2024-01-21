
{ ... }:
{
  programs.texlive = {
    extraPackages = tpkgs: {
      inherit (tpkgs)
        scheme-small
        makecell;
    };
  };
}
