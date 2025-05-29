# BlazeVim

## Installation

### Cleanup

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

### Plugin manager

#### Clone `lazy.nvim` plugin manager

```bash
git clone --branch=stable --filter=blob:none https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
```

#### Load `lazy.nvim`

`~/.config/nvim/init.lua`
```lua
require("config.lazy")
```

`~/.config/nvim/lua/config/lazy.lua`
```lua
vim.opt.rtp:prepend("~/.local/share/nvim/lazy.nvim")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})
```
