{
  opts = {
    relativenumber = false;
    tabstop = 4;
    softtabstop = 0;
    expandtab = false;
    shiftwidth = 4;
    guifont = "DejaVuSansM Nerd Font";
    termguicolors = true;
  };
  globals = {
    mapleader = " ";
    neovide_opacity = 0.83;
    neovide_normal_opacity = 0.83;
    neovide_window_blurred = true;
    neovide_input_macos_option_key_is_meta = "only_left";
  };

  plugins.neoconf = {
    enable = true;
  };

  keymaps = [
    {
      key = "<leader>qq";
      action = "<cmd>qa<CR>";
      options.desc = "Quit All";
    }
  ];
}
