return {
  "deponian/nvim-base64",
  keys = {
    -- Decode/encode selected sequence from/to base64
    { "<leader>bsd", "<Plug>(FromBase64)", mode = "x" },
    { "<leader>bse", "<Plug>(ToBase64)", mode = "x" },
  },
  config = function()
    require("nvim-base64").setup()
  end,
}
