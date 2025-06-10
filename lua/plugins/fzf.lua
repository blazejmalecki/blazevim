return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    {
      "<leader>f.",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "Find files",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").files({ cwd = "~" })
      end,
      desc = "Find files in ~"
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Live grep",
    },
    {
      "<leader>f/",
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
      desc = "Live grep in buffer",
    },
    {
      "<leader>fj",
      function()
        require("fzf-lua").jumps()
      end,
      desc = "Find jumps",
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").builtin()
      end,
      desc = "Builtin commands",
    },
    {
      "<leader>fr",
      function()
        require("fzf-lua").resume()
      end,
      desc = "Resume last command",
    },
  },
}
