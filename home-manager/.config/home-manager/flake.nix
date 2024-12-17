{
  inputs = {
    # HyprPanel flake
    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";

    # Home Manager
    home-manager.url = "github:nix-community/home-manager/master";

    # Nixpkgs
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs @ { nixpkgs, home-manager, hyprpanel, ... }: let
    system = "x86_64-linux"; # Adjust for your architecture
  in {
    homeConfigurations."jay" = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ hyprpanel.overlay ]; # HyprPanel overlay
      };

      # Pass inputs to home.nix
      extraSpecialArgs = { inherit inputs system; };

      # Use your main home.nix
      modules = [ ./home.nix ];
    };
  };
}

