return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'tokyonight',      -- match your colorscheme
                    section_separators = '',   -- optional
                    component_separators = '', -- optional
                    globalstatus = true,       -- for Neovim >=0.8
                },
            })
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            {
                "<leader>e",
                function()
                    require("nvim-tree.api").tree.toggle()
                end,
                desc = "Explorer",
            },
        },
        config = function()
            require("nvim-tree").setup()
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        lazy=false,
        keys = {
            {
                "<leader>d",
                "<cmd>Gitsigns diffthis HEAD<cr>",
                desc="Diff"
            }
        }
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = 'v0.2.0',
        branch = 'master',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzf-native.nvim',
        },
        config = function()
            require('telescope').load_extension('fzf')
        end,
        keys = {
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = 'Telescope find files'
            },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").live_grep()
                end,
                desc = 'Telescope live grep'
            },
            {
                "<leader>fh",
                function()
                    require("telescope.builtin").help_tags()
                end,
                desc = 'Telescope help tags'
            }
        }
    },
    { 
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
    {
      'nvim-treesitter/nvim-treesitter',
      lazy = false,
      tag = 'v0.10.0',
      branch = 'main',
      build = ':TSUpdate'
    }
}
