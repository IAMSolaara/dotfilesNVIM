{
  imports = [./markdown.nix ./http.nix];

  plugins.lsp.enable = true;
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

  lsp.servers.clangd = {
    enable = true;
    settings = {
      cmd = [
        "clangd"
        "--background-index"
      ];
      filetypes = [
        "c"
        "cpp"
      ];
      root_markers = [
        "compile_commands.json"
        "compile_flags.txt"
      ];
    };
  };
  lsp.servers.lua_ls = {
    enable = true;
  };
}
