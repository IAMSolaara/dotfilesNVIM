{
  plugins.bufferline.enable = true;
  plugins.bufferline.settings = {
    options = {
      close_command =
        #lua
        "lua function(n) Snacks.bufdelete(n) end";
      right_mouse_command =
        #lua
        "lua function(n) Snacks.bufdelete(n) end";
      diagnostics = "nvim_lsp";
      always_show_bufferline = false;

      offsets = [
        {
          filetype = "neo-tree";
          text = "Neo-tree";
          highlight = "Directory";
          text_align = "left";
        }
        {
          filetype = "snacks_layout_box";
        }
      ];
    };
  };

  plugins.lualine.enable = true;
  plugins.lualine.settings = {
    globalstatus.__raw =
      #lua
      "vim.o.laststatus == 3";
    theme = "auto";
    extensions = ["neo-tree" "fzf"];
  };

  plugins.which-key.enable = true;

  plugins.treesitter.enable = true;

  plugins.highlight-colors.enable = true;
  plugins.highlight-colors.settings = {
    enable_tailwind = true;
    enable_named_colors = true;
  };
  plugins.smear-cursor.enable = true;
  plugins.nui.enable = true;
  plugins.mini.enable = true;
  plugins.mini.modules.icons.enable = true;
  plugins.mini.mockDevIcons = true;
  plugins.notify.enable = true;

  plugins.noice.enable = true;
  plugins.noice.settings = {
    presets = {
      bottom_search = true;
      command_palette = true;
      long_message_to_split = true;
    };
    lsp = {
      override = {
        "vim.lsp.util.convert_input_to_markdown_lines" = true;
        "vim.lsp.util.stylize_markdown" = true;
        "cmp.entry.get_documentation" = true;
      };
    };
  };

  plugins.snacks.enable = true;
  plugins.snacks.settings = {
    indent.enabled = true;
    input.enabled = true;
    notifier.enabled = true;
    scope.enabled = true;
    scroll.enabled = true;
    statuscolumn.enabled = false;
    words.enabled = true;
  };
  plugins.neo-tree.enable = true;
  plugins.neo-tree.enableDiagnostics = true;
  plugins.neo-tree.enableGitStatus = true;
  plugins.neo-tree.enableModifiedMarkers = true;
  plugins.neo-tree.enableRefreshOnWrite = true;
  plugins.neo-tree.gitStatusAsync = true;
  plugins.neo-tree.addBlankLineAtTop = true;
  plugins.neo-tree.autoCleanAfterSessionRestore = true;

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
        indent_blankline.enabled = true;
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
