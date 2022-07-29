-- Changes keyleader from '\' to ' '
vim.g.mapleader = ' '
-- keymap('mode', 'keymapping', 'what-its-keymapping', 'options')
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = false}

keymap('n', '<F8>', ':TagbarToggle<CR>', opts) -- Toggles Tagbar
keymap('n', '<C-f>', ':NERDTreeFocus<CR>', opts) -- Focus on NerdTree
keymap('n', '<C-n>', ':NERDTree<CR>', opts) -- Open NerdTree
keymap('n', '<C-t>', ':NERDTreeToggle<CR>', opts) -- Toggle NerdTree

-- Changing windows
keymap('n', '<C-w>h', '<C-h>', opts)
keymap('n', '<C-w>j', '<C-j>', opts)
keymap('n', '<C-w>k', '<C-k>', opts)
keymap('n', '<C-w>l', '<C-l>', opts)
