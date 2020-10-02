{ pkgs ? import <nixpkgs> {}}:
with pkgs;

let
  knightos-genkfs = callPackage ./genkfs/default.nix { };
  knightos-kimg = callPackage ./kimg/default.nix {
    asciidoc = asciidoc-full;
    imagemagick = imagemagick7Big;
  };
  knightos-kpack = callPackage ./kpack/default.nix { };
  knightos-mktiupgrade = callPackage ./mktiupgrade/default.nix { };
  knightos-sass = callPackage ./sass/default.nix { };
  knightos-sdk = callPackage ./sdk/default.nix { };
  knightos-z80e = callPackage ./z80e/default.nix { };
in
mkShell {
  buildInputs = [
      knightos-genkfs
      knightos-kimg
      knightos-kpack
      knightos-mktiupgrade
      knightos-sass
      knightos-sdk
      knightos-z80e
  ];
}
