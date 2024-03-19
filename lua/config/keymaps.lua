-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Imported from my old dotfiles!
--
-- tab navigation binds --sarah
vim.keymap.set("n", "{", "<cmd>bprevious<CR>", { noremap = true, desc = "Prev Buffer" })
vim.keymap.set("n", "}", "<cmd>bnext<CR>", { noremap = true, desc = "Next Buffer" })

-- misc bindings --sarah
vim.keymap.set("n", "<Leader>qq", "<cmd>quitall<CR>", { noremap = true, desc = "Quit All" })

-- -- bindings to move lines --sarah
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- disable suspend on Windows --sarah
if vim.fn.has("win32") == 1 then
  vim.keymap.set({ "n", "v", "i" }, "<C-Z>", "<Nop>", { noremap = true, desc = "Suspend (inhibited)" })
end

-- bind for code actions --sarah
vim.keymap.set("n", "<C-.>", vim.lsp.buf.code_action, { noremap = true, desc = "Code Action" })
