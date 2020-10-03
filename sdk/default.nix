{ pkgs ? import <nixpkgs> {}}:
with pkgs;

let
  knightos-genkfs = callpackage ../genkfs/default.nix { };
in
python3Packages.buildPythonPackage rec {

  pname = "knightos-sdk";
  version = "2.0.9";
  src = fetchFromGitHub {
    owner = "KnightOS";
    repo = "sdk";
    rev = version;
    sha256 = "0n4mg51ghajhb6yhr330xgcd1abf7xp89czvzxx3yfp42pa3vh31";
  };

  doCheck = false;

  nativeBuildInputs = [ git ];

  propagatedBuildInputs = with python3.pkgs; [
    docopt requests pystache pyyaml setuptools
  ];
}
