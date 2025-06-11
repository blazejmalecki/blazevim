return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    init = function()
      vim.cmd([[colorscheme catppuccin-macchiato]])
    end,
    opts = {},
  },
}
