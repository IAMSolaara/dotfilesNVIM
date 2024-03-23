return {
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "nvim_rocks" },
    config = function()
      require("rest-nvim").setup()
    end,
  },
}
