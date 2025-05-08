-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Imported from my old dotfiles!
--
-- tab navigation binds --sarah
-- misc bindings --sarah
-- vim.keymap.set("n", "<Leader>qq", "<cmd>quitall<CR>", { noremap = true, desc = "Quit All" })

-- -- bindings to move lines --sarah


-- disable suspend on Windows --sarah


-- bind for code actions --sarah

-- lazyjj bind like the one for lazygit
if vim.fn.executable("lazyjj") == 1 then
	-- WRAPPER FUNCTION
	local open_lazyjj = function(opts)
		local cmd = { "lazyjj" }
		vim.list_extend(cmd, opts.args or {})

		return Snacks.terminal(cmd, opts)
	end

	-- the keymaps themselves
	vim.keymap.set("n", "<leader>jj", function()
		open_lazyjj({
			args = {
				p = LazyVim.root.git(),
			}
		})
	end, { desc = "LazyJJ (root)" })

	vim.keymap.set("n", "<leader>jJ", function()
		open_lazyjj()
	end, { desc = "LazyJJ (cwd)" })
end
