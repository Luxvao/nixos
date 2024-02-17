{
  enable = true;
  shellAliases = {
    nixconf = "sudo nvim ~/nixos/configuration.nix";
    nixos-rebuild = "sudo nixos-rebuild --flake /home/bor/nixos/";
    nixflake = "nvim ~/nixos/flake.nix";
    homeconf = "nvim ~/home/home.nix";
    homeflake = "nvim ~/home/flake.nix";
    home-manager = "home-manager --flake ~/home/";
  };

  interactiveShellInit = "neofetch";
}
