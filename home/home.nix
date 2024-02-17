{ config, pkgs, nixvim, ... }:

{
  # Imports
  imports = [
    nixvim.homeManagerModules.nixvim
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "bor";
  home.homeDirectory = "/home/bor";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];

  home.packages = with pkgs; [
    unzip
    firefox
    sxhkd
    alacritty
    picom
    fish
    htop
    rofi
    steam
    lunar-client
    prismlauncher
    gnome.nautilus
    discord
    rustup
    vscodium 
    shutter
    signal-desktop
    neofetch
    krita
    spotify
    bspwm
    file
    gnumake
    nasm
    lldb
    evcxr
    gdb
    vinegar
    libreoffice-qt
    logseq
    lutris
    wine
    cava
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;
    
    ".fehbg" = {
      enable = true;
      executable = true;
      text = "feh --no-fehbg --bg-scale /home/bor/.config/wallpaper2.jpg";
    };

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };
  
  # Dotfile management
  xsession.windowManager.bspwm = import ./nixfiles/bspwm.nix;

  services.sxhkd = import ./nixfiles/sxhkd.nix;
  services.picom = import ./nixfiles/picom.nix;
  
  programs.fish = import ./nixfiles/fish.nix;
  programs.nixvim = import ./nixfiles/nixvim.nix;  

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/bor/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
