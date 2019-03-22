{ system ? builtins.currentSystem }:

let
  nixpkgs = import <nixpkgs> { inherit system; };
in
rec {
  bootstrap-nixl = import ./pkgs/nixl {
    is_bootstrap = true;
    bootstrap_shell_binary = "${nixpkgs.dash}/bin/dash";
    inherit (nixpkgs) stdenv coreutils gcc nix;
    nixl = null;
  };
  nixl = import ./pkgs/nixl {
    is_bootstrap = false;
    bootstrap_shell_binary = null;
    inherit (nixpkgs) stdenv coreutils gcc nix;
    nixl = bootstrap-nixl;
  };
  explore = derivation {
    name = "explore-stuff-0.0";
    builder = "${nixpkgs.bash}/bin/bash";
    args = [./explore-in-build-env.sh];
    inherit (nixpkgs) coreutils;
    system = builtins.currentSystem;
  };
}
