{
  plugins.gitignore.enable = true;
  plugins.lazygit.enable = true;
  plugins.lazygit.settings.floating_window_use_plenary = 1;
  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action.__raw =
        #lua
        "function() Snacks.lazygit() end";
      options.silent = true;
      options.desc = "Launch LazyGit";
    }
    {
      mode = "n";
      key = "<leader>gl";
      action.__raw =
        #lua
        "function() Snacks.picker.git_log() end";
      options.silent = true;
      options.desc = "Git Log (cwd)";
    }
    {
      mode = "n";
      key = "<leader>gf";
      action.__raw =
        #lua
        "function() Snacks.picker.git_log_file() end";
      options.silent = true;
      options.desc = "Git Current File History";
    }
  ];
}
/*
map("n", "<leader>gl", function() Snacks.picker.git_log({ cwd = LazyVim.root.git() }) end, { desc = "Git Log" })
*/

