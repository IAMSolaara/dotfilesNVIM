{
  plugins.gitignore.enable = true;
  plugins.lazygit.enable = true;
  plugins.lazygit.settings.floating_window_use_plenary = 1;
  keymaps = [
    {
      key = "<leader>gg";
      action .__raw =
        #lua
        "function() Snacks.lazygit() end";
      options.silent = true;
      options.desc = "Launch LazyGit.";
    }
  ];
}
/*
map("n", "<leader>gg", function() Snacks.lazygit( { cwd = LazyVim.root.git() }) end, { desc = "Lazygit (Root Dir)" })
map("n", "<leader>gG", function() Snacks.lazygit() end, { desc = "Lazygit (cwd)" })
map("n", "<leader>gf", function() Snacks.picker.git_log_file() end, { desc = "Git Current File History" })
map("n", "<leader>gl", function() Snacks.picker.git_log({ cwd = LazyVim.root.git() }) end, { desc = "Git Log" })
map("n", "<leader>gL", function() Snacks.picker.git_log() end, { desc = "Git Log (cwd)" })
*/

