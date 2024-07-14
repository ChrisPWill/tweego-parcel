{
  description = "Tweego Parcel Boilerplate";

  inputs = {
    # nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # Needed to get tweego until it's merged upstream
    my-nixpkgs = {
      url = "github:chrispwill/nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    my-nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import my-nixpkgs {
        system = system;
      };
    in {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          nodejs_22
          yarn
          tweego
        ];

        shellHook = ''
          echo "Development environment for Tweego Parcel Boilerplate is ready."
          echo "Run 'yarn install' to install dependencies."
        '';
      };
    });
}
