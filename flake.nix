{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs @ {
    nixvim,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit system; # or alternatively, set `pkgs`
          module = import ./config; # import the module directly
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            # inherit (inputs) foo;
            inherit inputs;
            utils = import ./utils.nix;
          };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
        nvim_check = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
      in {
        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nvim_check;
          so-nvim = nvim_check;
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = nvim;
          so-nvim = nvim;
        };
      }
    );
}
