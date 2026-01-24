return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-mini/mini.icons",
  },
  opts = {},
  keys = {
    {
      "<leader>e",
      function()
        require("oil").open()
      end,
      desc = "Explorer",
    },
  },
}
