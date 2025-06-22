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
      "<leader>cD",
      function()
        Snacks.picker.lsp_declarations()
      end,
      desc = "Symbol declaration",
    },
    {
      "<leader>cd",
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = "Symbol definition",
    },
    {
      "<leader>ci",
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = "Symbol implementation",
    },
    {
      "<leader>cr",
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = "Symbol references",
    },
    {
      "<leader>ct",
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = "Symbol type definition",
    },
    {
      "<leader>cs",
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = "Symbols",
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
