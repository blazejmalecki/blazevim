return {
  "folke/snacks.nvim",
  priority = 1000,
  opts = {
    input = { enabled = true },
    picker = { enabled = true },
    indent = { enabled = true },
    explorer = { enabled = true },
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "Toggle file explorer",
    },
  },
}
