-- keymap('mode', 'keymapping', 'what-its-keymapping', 'options')
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = false}

keymap('n', '<F8>', ':TagbarToggle<CR>', opts) -- Toggles Tagbar
keymap('n', '<C-f>', ':NERDTreeFocus<CR>', opts) -- Focus on NerdTree
keymap('n', '<C-n>', ':NERDTree<CR>', opts) -- Open NerdTree
keymap('n', '<C-t>', ':NERDTreeToggle<CR>', opts) -- Toggle NerdTree