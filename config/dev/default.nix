{
  imports = [./markdown.nix ./http.nix ./lang];

  plugins.trouble.enable = true;
  plugins.trouble.lazyLoad.settings.cmd = "Trouble";
  plugins.trouble.settings = {
    modes = {
      lsp = {win = {position = "right";};};
    };
  };
  keymaps = [
    {
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options.desc = "Diagnostics (Trouble)";
    }
    {
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options.desc = "Buffer Diagnostics (Trouble)";
    }
    {
      key = "<leader>cs";
      action = "<cmd>Trouble symbols toggle<cr>";
      options.desc = "Symbols (Trouble)";
    }
    {
      key = "<leader>cS";
      action = "<cmd>Trouble lsp toggle<cr>";
      options.desc = "LSP references/definitions/... (Trouble)";
    }
    {
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      options.desc = "Location List (Trouble)";
    }
    {
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<cr>";
      options.desc = "Quickfix List (Trouble)";
    }
  ];

  #plugins.lsp.enable = true;
  lsp.inlayHints.enable = true;
  lsp.keymaps = [
    {
      key = "ca";
      lspBufAction = "code_action";
    }
    {
      key = "gd";
      lspBufAction = "definition";
    }
    {
      key = "gD";
      lspBufAction = "references";
    }
    {
      key = "gt";
      lspBufAction = "type_definition";
    }
    {
      key = "gi";
      lspBufAction = "implementation";
    }
    {
      key = "K";
      lspBufAction = "hover";
    }
    {
      action.__raw =
        #lua
        "function() vim.diagnostic.jump({ count=-1, float=true }) end";

      key = "<leader>k";
    }
    {
      action.__raw =
        #lua
        "function() vim.diagnostic.jump({ count=1, float=true }) end";
      key = "<leader>j";
    }
    {
      action = "<CMD>LspStop<Enter>";
      key = "<leader>lx";
    }
    {
      action = "<CMD>LspStart<Enter>";
      key = "<leader>ls";
    }
    {
      action = "<CMD>LspRestart<Enter>";
      key = "<leader>lr";
    }
  ];

  lsp.servers."*" = {
    settings = {
      capabilities = {
        workspace = {
          fileOperations = {
            didRename = true;
            willRename = true;
          };
        };
        textDocument = {
          semanticTokens = {
            multilineTokenSupport = true;
          };
        };
      };
      root_markers = [
        ".git"
      ];
    };
  };
}
