{
  description = "FrostPhoenix's nixos configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    flake-utils.url = "github:numtide/flake-utils";
    
    hyprland.url = "github:hyprwm/Hyprland";
    

        hypr-contrib = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "hyprland/nixpkgs";
    };

    hyprpicker = {
      url = "github:hyprwm/hyprpicker";
      inputs.nixpkgs.follows = "hyprland/nixpkgs";
    };

    hyprlock = {
      url = "github:hyprwm/hyprlock";
      inputs = {
        hyprgraphics.follows = "hyprland/hyprgraphics";
        hyprlang.follows = "hyprland/hyprlang";
        hyprutils.follows = "hyprland/hyprutils";
        nixpkgs.follows = "hyprland/nixpkgs";
        systems.follows = "hyprland/systems";
      };
    };

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs = {
        hyprland = {
          follows = "hyprland";
        };
      };
    };

    waybar.url = "github:Alexays/Waybar";
    ghostty.url = "github:ghostty-org/ghostty";
    
  };

  outputs =
    { nixpkgs, self, ... }@inputs:
    let
      username = "yakatze";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
        "${username}" = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./nix ];
          specialArgs = {
            inherit self inputs username;
          };
         };
        };

      };
}
