{ pkgs ? import <nixpkgs> {}}:
with pkgs;

let
  knightos-genkfs = callpackage ../genkfs/default.nix { };
in
python3Packages.buildPythonPackage rec {

  pname = "knightos-sdk";
  version = "1.4.1";
  src = fetchFromGitHub {
    owner = "KnightOS";
    repo = "sdk";
    rev = "9ac3e8f964c96cf16e13261848e3a24a8a80fe8e";
    sha256 = "17sawhxg5251jbx4112ibh2a5cq61vk2bw9pp5ib4yn2156pc4hq";
  };

  doCheck = false;

  nativeBuildInputs = [ git ];

  propagatedBuildInputs = with python3.pkgs; [
    docopt requests pystache pyyaml setuptools
  ];
}
