-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = false
vim.opt.shiftwidth = 4

if vim.g.neovide then
  vim.o.guifont = "DejaVuSansM Nerd Font"
  vim.g.neovide_opacity = 0.83
  vim.g.neovide_normal_opacity = 0.83
  vim.g.neovide_window_blurred = true
  vim.g.neovide_input_macos_option_key_is_meta = "only_left"
end
