{
  imports = [
    ./colorscheme.nix
    ./neo-tree.nix
  ];

  plugins.bufferline.enable = true;
  plugins.bufferline.settings = {
    options = {
      close_command.__raw =
        #lua
        "function(n) Snacks.bufdelete(n) end";
      right_mouse_command.__raw =
        #lua
        "function(n) Snacks.bufdelete(n) end";
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
}
