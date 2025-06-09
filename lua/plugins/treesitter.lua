return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "bash",
          "lua",
          "c",
          "cpp",
          "go",
          "rust",
          "python",
          "javascript",
          "typescript",
          "luadoc",
          "vim",
          "vimdoc",
          "json",
          "yaml",
          "toml",
          "markdown",
          "markdown_inline",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<Enter>",
            node_incremental = "<Enter>",
            scope_incremental = false,
            node_decremental = "<Backspace>",
          },
        },
      })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-treesitter.configs").setup({
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["if"] = "@function.inner",
              ["af"] = "@function.outer",
              ["ic"] = "@class.inner",
              ["ac"] = "@class.outer",
            },
          },
        }
      })
    end
  },
}
