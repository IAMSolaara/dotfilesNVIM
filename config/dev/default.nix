{
  imports = [./markdown.nix ./http.nix];

  plugins.lsp.enable = true;
  plugins.lsp.keymaps.lspBuf = {
    "ca" = "code_action";
  };
}
