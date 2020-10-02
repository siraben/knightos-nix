{ pkgs ? import <nixpkgs> {}}:
with pkgs;

stdenv.mkDerivation {
  name = "sass";

  src = fetchFromGitHub {
    owner = "KnightOS";
    repo = "sass";
    rev = "b638f95159496a958e1128a50f4d60a95426df18";
    sha256 = "0vna5jbn3qsl52izsm0k5p7g6zl2hksdx4m80rr759rf3dhh3g6r";
  };
  buildInputs = [ mono ];
  installPhase = ''
    make install DESTDIR=$out PREFIX=$out
  '';

}
