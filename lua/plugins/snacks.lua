return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        header = [[
██████╗ ██╗      █████╗ ███████╗███████╗██╗   ██╗██╗███╗   ███╗
██╔══██╗██║     ██╔══██╗╚══███╔╝██╔════╝██║   ██║██║████╗ ████║
██████╔╝██║     ███████║  ███╔╝ █████╗  ██║   ██║██║██╔████╔██║
██╔══██╗██║     ██╔══██║ ███╔╝  ██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║
██████╔╝███████╗██║  ██║███████╗███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
        ]],
        keys = {},
      },
    },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    explorer = { enabled = true },
    lazygit = { enabled = true },
    words = { enabled = true },
    indent = { enabled = true },
    statuscolumn = { enabled = true },
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
