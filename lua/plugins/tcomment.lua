return {
  -- for JSX/TSX Comments
  { "JoosepAlviste/nvim-ts-context-commentstring", dependencies = "nvim-treesitter" },
  {
    "numToStr/Comment.nvim",
    dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
    opts = {
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    },
    lazy = false,
  },
}
