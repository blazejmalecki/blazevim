return {
  "gbprod/yanky.nvim",
  dependencies = { "folke/snacks.nvim" },
  opts = {},
  keys = {
    {
      "<leader>y",
      function()
        Snacks.picker.yanky()
      end,
      mode = { "n", "x" },
      desc = "Open yank history",
    },
  },
}
