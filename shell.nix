# This is a nix-shell for use with the nix package manager.
# If you have nix installed, you may simply run `nix-shell`
# in this repo, and have all dependencies ready in the new shell.
# With direnv,
#   echo "use nix" > .envrc
# to get that automatically
{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs;
    [
      verilator
      nextpnr
      yosys 
      fujprog
    ];
}
