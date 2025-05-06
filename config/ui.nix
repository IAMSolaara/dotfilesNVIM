{
  plugins.bufferline.enable = true;
  plugins.web-devicons.enable = true;

  plugins.lualine = {
    enable = true;
  };
  plugins.highlight-colors.enable = true;
  plugins.highlight-colors.settings = {
    enable_tailwind = true;
    enable_named_colors = true;
  };

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavor = "macchiato";
      term_colors = true;
      transparent_background = true;
      integrations = {
        aerial = true;
        alpha = true;
        cmp = true;
        dashboard = true;
        flash = true;
        fidget = true;
        gitsigns = true;
        headlines = true;
        illuminate = true;
        indent_blankline = {enabled = true;};
        leap = true;
        lsp_trouble = true;
        mason = true;
        markdown = true;
        mini = true;
        native_lsp = {
          enabled = true;
          underlines = {
            errors = ["undercurl"];
            hints = ["undercurl"];
            warnings = ["undercurl"];
            information = ["undercurl"];
          };
        };
        navic = {
          enabled = true;
          custom_bg = "lualine";
        };
        neotest = true;
        neotree = true;
        noice = true;
        notify = true;
        semantic_tokens = true;
        telescope = true;
        treesitter = true;
        treesitter_context = true;
        which_key = true;
      };
    };
  };
}
