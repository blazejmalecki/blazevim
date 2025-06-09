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
    },
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").files({ cwd = "~" })
      end,
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
    },
    {
      "<leader>/",
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
    },
    {
      "<leader>fj",
      function()
        require("fzf-lua").jumps()
      end,
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").builtin()
      end,
    },
    {
      "<leader>fr",
      function()
        require("fzf-lua").resume()
      end,
    },
  },
}
