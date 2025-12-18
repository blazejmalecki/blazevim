return {
  "gbprod/yanky.nvim",
  dependencies = {
    "folke/snacks.nvim",
  },
  opts = {},
  keys = {
    {
      "<leader>yh",
      function()
        Snacks.picker.yanky()
      end,
      mode = { "n", "x" },
      desc = "Yank history",
    },
  },
}
