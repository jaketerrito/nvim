# nvim
My NVIM configurations using the [lazy plugin manager](https://lazy.folke.io/)

## Requirements
 - [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
 - [nerdfont](https://www.nerdfonts.com/)
 - [ripgrep](https://github.com/BurntSushi/ripgrep) - dependency for telescope
 - [fd](https://github.com/sharkdp/fd?) - dependency for telescope
 - [tmux](https://github.com/tmux/tmux) - follow tmux navigator guide to configure tmux conf

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

### [telescope]
Search within file tree by file name and contents.

### [tree sitter]
TODO what is this how configure

### [tmux navigator](https://github.com/christoomey/vim-tmux-navigator)
Simple tmux navigation with nvim

### [mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim)
Installs and configures lsp servers, available configurations can be found [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md)
Powering auto complete and linting

## Extras
- [Kitty Terminal](https://sw.kovidgoyal.net/kitty/)
- [oh-my-zsh](https://ohmyz.sh/)
