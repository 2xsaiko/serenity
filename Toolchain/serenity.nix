{ pkgs ? import <nixpkgs> { } }:
with pkgs;

stdenv.mkDerivation {
  name = "cpp-env";
  nativeBuildInputs = [
    gcc12
    curl
    cmake
    mpfr
    ninja
    gmp
    libmpc
    e2fsprogs
    patch
    ccache
    rsync
    unzip
    texinfo
    # Example Build-time Additional Dependencies
    pkg-config
  ];
  buildInputs = [
    # Example Run-time Additional Dependencies
    openssl
    xlibsWrapper
    qemu
    e2fsprogs
    # Other tools used in the repository
    pre-commit
    shellcheck
  ];

  hardeningDisable = [ "format" "fortify" ];
}
