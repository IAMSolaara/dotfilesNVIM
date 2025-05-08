{
  plugins.neoconf.enable = true;
  plugins.lz-n.enable = true;

  plugins.toggleterm.enable = true;
  plugins.toggleterm.settings = {
    winbar.enable = true;
  };
  keymaps = [
    {
      key = "<leader>tt";
      action = "<cmd>ToggleTerm direction=horizontal<CR>";

      options.desc = "Toggle ToggleTerm (horizontal)";
    }
    {
      key = "<leader>tv";
      action = "<cmd>ToggleTerm direction=vertical<CR>";
      options.desc = "Toggle ToggleTerm (vertical)";
    }
    {
      key = "<leader>ts";
      action = "<cmd>TermSelect<CR>";
      options.desc = "Select ToggleTerm terminal";
    }
  ];
}
