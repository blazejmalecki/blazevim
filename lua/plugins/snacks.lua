return {
  "folke/snacks.nvim",
  dependencies = {
    "ibhagwan/fzf-lua",
    "mason-org/mason.nvim",
  },
  priority = 1000,
  opts = {
    input = { enabled = true },
    picker = { enabled = true },
    indent = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":FzfLua files" },
          { icon = " ", key = "g", desc = "Find Text", action = ":FzfLua live_grep" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":FzfLua oldfiles" },
          { icon = " ", key = "c", desc = "Config", action = ":FzfLua files cwd=vim.fn.stdpath('config')" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = "", key = "m", desc = "Mason", action = ":Mason" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
