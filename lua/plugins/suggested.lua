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
}
