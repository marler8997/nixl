{ stdenv, is_bootstrap, bootstrap_shell_binary, coreutils, gcc, nix, nixl }:

let
  version = "0.0";
in
derivation ({

#  buildInputs = [ coreutils gcc nix ];
  inherit coreutils gcc nix;

  src = ../../src;

#  meta = {
#    description = "A nix expression execution tool";
#  };
  system = builtins.currentSystem;
} // (if is_bootstrap then {
  #
  # bootstrap-specific attributes
  #
  name = "bootstrap-nixl-${version}";
  builder = bootstrap_shell_binary;
  args = [./bootstrap-builder.sh ];
} else rec {
  #
  # non-bootstrap-specific attributes
  #
  name = "nixl-${version}";
  builder = "${nixl}/bin/nixl";
  nixl_script = [
    {cmd=["${coreutils}/bin/mkdir" "-p" "$out/bin"];}
    {cmd=["${gcc}/bin/gcc" "-o" "$out/bin/nixl" "$out/bin" "$src/nixl.c"];}
  ];
})
)