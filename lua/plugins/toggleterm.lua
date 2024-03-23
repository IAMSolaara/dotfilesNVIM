return {
  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      opts = {
        winbar = {
          enabled = true,
        },
      },
      keys = {
        {
          -- Temporarily disable LazyVim's default terminal key
          -- TODO: Replace this with some comment function
          "<c-/>",
          "<nop>",
          desc = "which_key_ignore",
        },
        {
          "<leader>tt",
          "<cmd>ToggleTerm direction=horizontal<CR>",
          desc = "Toggle ToggleTerm (horizontal)",
        },
        {
          "<leader>tv",
          "<cmd>ToggleTerm direction=vertical<CR>",
          desc = "Toggle ToggleTerm (vertical)",
        },
        {
          "<leader>ts",
          "<cmd>TermSelect<CR>",
          desc = "Select ToggleTerm terminal",
        },
      },
    },
  },
}
