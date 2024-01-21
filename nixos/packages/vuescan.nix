{ lib, stdenv, fetchurl, gnutar, autoPatchelfHook, glibc, gtk2, xorg, libgudev
, makeDesktopItem }:
let
  pname = "vuescan";
  version = "9.8";
  desktopItem = makeDesktopItem {
    name = "VueScan";
    desktopName = "VueScan";
    genericName = "Scanning Program";
    comment = "Scanning Program";
    icon = "vuescan";
    terminal = false;
    type = "Application";
    startupNotify = true;
    categories = [ "Graphics" "Utility" ];
    keywords = [ "scan" "scanner" ];

    exec = "vuescan";
  };
in stdenv.mkDerivation rec {
  name = "${pname}-${version}";

   src = fetchurl {
     url = "https://www.hamrick.com/files/vuex6498.tgz";
     hash = "sha256-2Md2q3XMf7+3lOfIzjisrNq6Y8nYV7XXShy/67BR8oM=";
   };

  # Stripping breaks the program
  dontStrip = true;

  nativeBuildInputs = [ gnutar autoPatchelfHook ];

  buildInputs = [ glibc gtk2 xorg.libSM libgudev ];

  unpackPhase = ''
    tar xfz $src
  '';

  installPhase = ''
    install -m755 -D VueScan/vuescan $out/bin/vuescan

    mkdir -p $out/share/icons/hicolor/scalable/apps/
    cp VueScan/vuescan.svg $out/share/icons/hicolor/scalable/apps/vuescan.svg 

    mkdir -p $out/lib/udev/rules.d/
    cp VueScan/vuescan.rul $out/lib/udev/rules.d/60-vuescan.rules

    mkdir -p $out/share/applications/
    ln -s ${desktopItem}/share/applications/* $out/share/applications
  '';
}
