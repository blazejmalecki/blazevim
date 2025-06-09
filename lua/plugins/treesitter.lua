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
      })
    end
  },
}
