{
  inputs.nixpkgs.url = "nixpkgs/nixpkgs-unstable";

  outputs = {self, nixpkgs}: let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    devShell.x86_64-linux = import ./Toolchain/serenity.nix {inherit pkgs;};
  };
}
