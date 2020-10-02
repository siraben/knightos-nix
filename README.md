# Compiling KnightOS end-to-end using Nix

KnightOS is one of my favorite projects, a custom OS for many models
of the TI calculator series.  It was the inspiration for my own custom
Forth-based OS for the TI-84+
([zkeme80](https://github.com/siraben/zkeme80)).  Motivated by the
success of using Nix in that project to ensure that it would be
possible to build and run the emulator locally, I wanted to preserve
KnightOS as well.

This repository is self-contained.  At the moment of writing some
components of KnightOS tooling are in Nixpkgs, and some are pending
merge.

To compile and run KnightOS, clone this repository and navigate to it,
then enter the Nix shell and type `runit`.  You'll need a network
connection as the SDK fetches the libraries and kernel.

```shell
$ nix-shell

[nix-shell]$ runit
```

This code is licensed under the MIT license.
