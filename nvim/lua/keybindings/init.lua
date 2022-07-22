vim.g.mapleader = ' '
-- map('mode', 'mapping', 'what-its-mapping', 'options')
local map = vim.api.nvim_set_map
local opts = { noremap = true, silent = false }

map('n', '<F8>', ':TagbarToggle<CR>', opts) -- Toggles Tagbar
map('n', '<C-f>', ':NERDTreeFocus<CR>', opts) -- Focus on NerdTree
map('n', '<C-n>', ':NERDTree<CR>', opts) -- Open NerdTree
map('n', '<C-t>', ':NERDTreeToggle<CR>', opts) -- Toggle NerdTree
