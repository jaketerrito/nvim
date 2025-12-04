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
                    local api = require("nvim-tree.api")
                    local view = require("nvim-tree.view")

                    if not view.is_visible() then
                        -- Case 1: Tree not visible → open it
                        api.tree.open()
                    else
                        local tree_win = view.get_winnr()
                        if vim.api.nvim_get_current_win() == tree_win then
                            -- Case 3: Tree is focused → close it
                            api.tree.close()
                        else
                            -- Case 2: Tree is open but not focused → focus it
                            api.tree.focus()
                        end
                    end
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
    },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "gopls", "ruff"},
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}
