# nvim
My NVIM configurations using the [lazy plugin manager](https://lazy.folke.io/)

## Requirements
 - [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
 - [nerdfont](https://www.nerdfonts.com/)


## Plugins
Add plugins in `/lua/plugins/` following the [lazy plugins spec](https://lazy.folke.io/spec)
Manage plugins with `nvim` -> `:Lazy`

### [which-key](https://github.com/folke/which-key.nvim)
Plugin to help show keybindings
Trigger with `<space>` from normal mode

### [tokyonight colorscheme](https://github.com/folke/tokyonight.nvim)
Colorscheme for nvim
Kitten terminal comes with this colorscheme preinstalled, `kitten themes --reload-in=all Tokyo Night Moon`

### [lualine](https://github.com/nvim-lualine/lualine.nvim)
Provides statusline in neovim.
This includes git information, current open file, nvim mode

### [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
Provides a file explorer

### [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
Provides highlighting and shortcuts for git diff

## Extras
- [Kitty Terminal](https://sw.kovidgoyal.net/kitty/)
- [oh-my-zsh](https://ohmyz.sh/)
