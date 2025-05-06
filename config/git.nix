{
  plugins.gitignore.enable = true;
  plugins.lazygit.enable = true;
  plugins.lazygit.settings.floating_window_use_plenary = 1;
  keymaps = [
    {
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options.silent = true;
      options.desc = "Launch LazyGit.";
    }
  ];
}
