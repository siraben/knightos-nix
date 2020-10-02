{ stdenv, fetchFromGitHub, cmake, asciidoc, libxslt }:

stdenv.mkDerivation rec {
  pname = "genkfs";

  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "KnightOS";
    repo = "genkfs";
    rev = version;
    sha256 = "12qhfxvpahlbb2gyqpmnnjbia0wydfafjrj08algdyj5s5g0n0x4";
  };

  nativeBuildInputs = [ cmake ];

  buildInputs = [ asciidoc libxslt.bin ];

  hardeningDisable = [ "format" ];

  meta = with stdenv.lib; {
    homepage    = "https://knightos.org/";
    description = "Writes a KFS filesystem into a ROM file";
    license     = licenses.mit;
    maintainers = with maintainers; [ siraben ];
  };
}
