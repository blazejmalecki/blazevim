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
      "<leader>fc",
      function()
        Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "Find config files",
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
      "<leader>fm",
      function()
        Snacks.picker.man()
      end,
      desc = "Find manuals",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume find/grep",
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
