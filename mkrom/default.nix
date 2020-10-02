with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "mkrom";
  src = fetchFromGitHub {
    owner = "KnightOS";
    repo = "mkrom";
    rev = "7a735ecbe09409e74680a9dc1c50dd4db99a409f";
    sha256 = "18h7a0fb5zb991iy9ljpknmk9qvl9nz3yh1zh5bm399rpxn4nzx3";
  };
  buildInputs = [ cmake ];
  hardeningDisable = [ "all" ]; 
}
