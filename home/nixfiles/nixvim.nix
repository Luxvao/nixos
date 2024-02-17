{
  enable = true;

  enableMan = true;

  colorschemes.catppuccin.enable = true;

  plugins = {
    telescope = {
      enable = true;
    };

    bufferline = {
      enable = true;
    };

    lualine = {
      enable = true;
    };

    treesitter = {
      enable = true;
    };

    nvim-autopairs = {
      enable = true;
    };

    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      sources = [
        {name = "nvim_lsp";}
	{name = "path";}
	{name = "buffer";}
      ];
    };

    lsp = {
      enable = true;

      servers = {
        rust-analyzer = {
          installCargo = true;
	  installRustc = true;
	};

	nixd.enable = true;
      };
    };
  };
}
