return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>kk",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Local keymaps",
    },
    {
      "<leader>kK",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "Global keymaps",
    },
  },
}
