return {
  "folke/snacks.nvim",
  priority = 1000,
  opts = {
    input = { enabled = true },
    picker = { enabled = true },
    explorer = { enabled = true },
    lazygit = { enabled = true },
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "Toggle file explorer",
    },
    {
      "<leader>gg",
      function()
        Snacks.lazygit()
      end,
      desc = "Open LazyGit",
    },
  },
}
