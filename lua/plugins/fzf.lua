return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
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
      "<leader>fb",
      function()
        require("fzf-lua").builtin()
      end,
    },
    {
      "<leader>fm",
      function()
        require("fzf-lua").manpages()
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
