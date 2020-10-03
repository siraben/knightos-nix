# Compiling KnightOS end-to-end using Nix

[KnightOS](https://knightos.org/) is one of my favorite projects, a custom OS for many models
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
connection as the SDK fetches the libraries and kernel.  After the
packages are installed, you'll be in the debugger.  Enter `run` to run
the emulator, then press F12 (fn + F12 on macOS) to turn the
calculator on.

```shell
$ git clone --recursive git@github.com:siraben/knightos-nix
$ cd knightos-nix
$ nix-shell

[nix-shell]$ runit
/var/folders/s1/sm71lqk553d1_f8drd3tz_5r0000gn/T/tmp.VHuZnLfXW8/knightos-nix/KnightOS
Found existing project: KnightOS
Installing SDK...
-- snip --
z80e-sdl --debug -d TI84p .knightos/debug.rom
z80e [F:00:0x0000 JP 0x006B] > run
```

This code is licensed under the MIT license.
