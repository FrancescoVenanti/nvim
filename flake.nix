{
  description = "PwnVim:- Neovim, the less is more 👾";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, neovim-nightly-overlay, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
    (system: let
      overlays = [ neovim-nightly-overlay.overlay ];
      pkgs = import nixpkgs {
        overlays = overlays;
        system = system;
      };
    in
    {
      devShell = with pkgs; pkgs.mkShell {
        buildInputs = [ neovim-nightly ];

        shellHook = ''
	    mv ~/.config/nvim ~/.config/nvim.backup
            ln -s $(pwd) ~/.config/nvim
            mv ~/.local/share/nvim ~/.local/share/nvim.backup
        '';
      };
    });
}
