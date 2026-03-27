{
  description = "Bacterial Unknown Identification - React/Vite dev environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            eslint
            nodejs_20
            just
            vite
          ];

          shellHook = ''
            echo "Node.js $(node --version)"
            echo "npm $(npm --version)"
          '';
        };
      });
}
