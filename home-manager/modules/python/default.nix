
{ pkgs, ... }:
let
  py-packages = ps: with ps; [
    buildPythonPackage rec {
      pname = "hyprpy";
      version = "0.1.5";
      src = fetchPypi {
        inherit pname version;
        sha256 = "cb23cf9c87350972f702aa3aabee39b8c35f53c0de5318d181272bbaa0c82470";
      };
      doCheck = false;
    }
  ];
in
{
  home.packages = with pkgs; [
    (python3.withPackages py-packages)
  ];
}
