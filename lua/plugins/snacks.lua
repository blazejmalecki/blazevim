return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        keys = {},
      },
    },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    explorer = { enabled = true },
    terminal = { enabled = true },
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
      desc = "Buffers",
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find files",
    },
    {
      "<leader>fm",
      function()
        Snacks.picker.man()
      end,
      desc = "Find manuals",
    },
    {
      "<leader>ss",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>rr",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume find/grep",
    },
    {
      "<leader>cs",
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = "Symbols",
    },
    {
      "<leader>cd",
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = "Symbol definitions",
    },
    {
      "<leader>ci",
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = "Symbol implementations",
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
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File explorer",
    },
    {
      "<leader>t",
      function()
        Snacks.terminal()
      end,
      desc = "Terminal",
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
