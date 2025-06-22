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
      "<leader><leader>",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find files",
    },
    {
      "<leader>fg",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>fl",
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent files",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume find/grep",
    },
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File explorer",
    },
    {
      "<leader>gg",
      function()
        Snacks.lazygit()
      end,
      desc = "LazyGit",
    },
  },
}
