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
vim.o.tabstop = 2

-- Set minimal number of screen lines to keep above and below the cursor
vim.o.scrolloff = 8

-- Don't store backup while overwriting the file
vim.o.backup = false
vim.o.writebackup = false

-- Enable persistent undo
vim.o.undofile = true

-- Enable gui colors
vim.o.termguicolors = true

-- Nerd Font is available
vim.g.have_nerd_font = true

-- Enable mouse for all available modes
vim.o.mouse = "a"

-- Display line numbers
vim.o.number = true

-- Display sign column (otherwise it will shift text)
vim.o.signcolumn = "yes"

-- Highlight current line
vim.o.cursorline = true

-- Don't show the mode
vim.o.showmode = false

-- Don't show cursor position in command line
vim.o.ruler = false

-- Vertical splits will be to the right
vim.o.splitright = true

-- Horizontal splits will be below
vim.o.splitbelow = true

-- Display long lines as just one line
vim.o.wrap = false

-- Wrap long lines at breakat (if wrap is set)
vim.o.linebreak = true

-- Indent wrapped lines to match line start
vim.o.breakindent = true

-- Show search results while typing
vim.o.incsearch = true

-- Ignore case when searching (use `\C` to force not doing that)
vim.o.ignorecase = true

-- Infer letter cases for a richer built-in keyword completion
vim.o.infercase = true

-- Don't ignore case when searching if pattern has upper case
vim.o.smartcase = true

-- Make indenting smart
vim.o.smartindent = true

-- Load plugins
require("lazy").setup({
  spec = { { import = "plugins" } },
  checker = { enabled = true },
})

-- Set colorscheme
vim.cmd.colorscheme("catppuccin-macchiato")
