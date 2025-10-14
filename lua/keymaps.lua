-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Example: basic normal mode mapping
keymap("n", "<leader>e", ":echo 'Hello from keymaps.lua'<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Lazy.nvim keymap
keymap("n", "<leader>p", ":Lazy<CR>", opts)  -- <Space>p opens Lazy

-- Register mappings with WhichKey
local ok, wk = pcall(require, "which-key")
if ok then
  wk.setup() -- initialize WhichKey
  wk.register({
    ["<leader>"] = {
      p = { ":Lazy<CR>", "Open Lazy Manager" },
    },
  })
end
