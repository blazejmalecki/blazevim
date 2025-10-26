-- Bootstrap package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--branch=stable",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set tab width
vim.o.tabstop = 4

-- Display line numbers
vim.o.number = true

-- Set minimal number of screen lines to keep above and below the cursor
vim.o.scrolloff = 8

-- Don't show the mode
vim.o.showmode = false

-- Load plugins
require("lazy").setup({
  spec = { { import = "plugins" } },
  checker = { enabled = true },
})

-- Set colorscheme
vim.cmd.colorscheme("catppuccin-macchiato")
