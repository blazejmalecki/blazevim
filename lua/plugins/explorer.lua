return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-mini/mini.icons",
  },
  opts = {},
  keys = {
    {
      "<leader><leader>",
      function()
        require("oil").open()
      end,
      desc = "Explorer",
    },
  },
}
