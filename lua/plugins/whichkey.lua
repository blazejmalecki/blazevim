return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>lk",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "List local keymaps",
    },
    {
      "<leader>lK",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "List global keymaps",
    },
  },
}
