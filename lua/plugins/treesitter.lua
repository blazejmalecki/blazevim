return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    version = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    main = "nvim-treesitter.configs",
    build = ":TSUpdate",
    opts = {
      indent = { enable = true },
      highlight = { enable = true },
      auto_install = true,
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["ic"] = "@class.inner",
            ["ac"] = "@class.outer",
            ["if"] = "@function.inner",
            ["af"] = "@function.outer",
          },
        },
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Enter>",
          node_incremental = "<Enter>",
          node_decremental = "<Backspace>",
          scope_incremental = false,
        },
      },
      ensure_installed = {
        -- Required
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        -- Additional
        "go",
        "python",
      },
    },
  },
}
