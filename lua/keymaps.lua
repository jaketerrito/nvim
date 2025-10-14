-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Keymap options
local opts = { noremap = true, silent = true }

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Lazy.nvim (ensure keymap description so WhichKey shows it)
vim.keymap.set("n", "<leader>p", "<cmd>Lazy<CR>", { desc = "Open Lazy Manager", noremap = true, silent = true })

-- WhichKey optional setup (it will automatically pick up keymaps with `desc`)
local ok, wk = pcall(require, "which-key")
if ok then
    wk.setup()
end

