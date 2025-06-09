return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    {
      "<leader><leader>",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "[FZF] Find buffers",
    },
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "[FZF] Find files",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").files({ cwd = "~" })
      end,
      desc = "[FZF] Find files in ~"
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "[FZF] Live grep",
    },
    {
      "<leader>/",
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
      desc = "[FZF] Live grep in buffer",
    },
    {
      "<leader>fj",
      function()
        require("fzf-lua").jumps()
      end,
      desc = "[FZF] Find jumps",
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").builtin()
      end,
      desc = "[FZF] Builtin commands",
    },
    {
      "<leader>fr",
      function()
        require("fzf-lua").resume()
      end,
      desc = "[FZF] Resume last command",
    },
  },
}
