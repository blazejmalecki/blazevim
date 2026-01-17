return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-mini/mini.icons",
  },
  opts = {},
  keys = {
    {
      "<leader>,",
      function()
        require("fzf-lua").history()
      end,
      desc = "Buffers/files history",
    },
    {
      "<leader>.",
      function()
        require("fzf-lua").files()
      end,
      desc = "Files",
    },
    {
      "<leader>>",
      function()
        require("fzf-lua").files({ resume = true })
      end,
      desc = "Resume files",
    },
    {
      "<leader>/",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>?",
      function()
        require("fzf-lua").live_grep({ resume = true })
      end,
      desc = "Resume grep",
    },
    {
      "<leader>`",
      function()
        require("fzf-lua").builtin()
      end,
      desc = "Picker builtin commands",
    },
  },
}
