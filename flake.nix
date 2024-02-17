{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
  
    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = github:nix-community/nixvim;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@attrs: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = attrs;
      modules = [ ./system/configuration.nix ];
    };
    
    homeConfigurations."bor" = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { system = "x86_64-linux"; };
      extraSpecialArgs = attrs;
      modules = [ ./home/home.nix ];
    };
  };
}
