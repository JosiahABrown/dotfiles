----------------------------------------------------
-- Packer options
-- https://github.com/wbthomason/packer.nvim
--	:PackerSync
--
---------------------------------------------------


-- VIM OPTIONS --------------------------------------------------
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.mouse = 'a'

-- PACKER BOOTSTRAPPING --------------------------------------------------
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- PACKAGES/PLUGINS --------------------------------------------------
require('packer').startup(function()
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Apperance 
	use 'gruvbox-community/gruvbox'
	use 'vim-airline/vim-airline-themes'
	use 'ryanoasis/vim-devicons'
	use 'glepnir/dashboard-nvim'

	-- Commands 
	use 'tpope/vim-surround' -- cs change surrounding
	use 'tpope/vim-commentary' -- gc comment section

	-- Extensibility
	use 'vim-airline/vim-airline' -- status bar
	use 'preservim/nerdtree' -- file tree
	use 'preservim/tagbar' -- class outline preview
	use 'ap/vim-css-color' -- css color preview
	use {
		'ojroques/nvim-lspfuzzy',
		requires = {
			{'junegunn/fzf'},
			{'junegunn/fzf.vim'},  -- to enable preview (optional)
		},
	}

	-- Auto complete
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- Packer bootstrap
	if packer_bootstrap then
		require('packer').sync()
	end
end)

-- Autocompletion --------------------------------------------------
require('cmp-config')
 

-- KEYMAPPINGS --------------------------------------------------
local keymap = vim.api.nvim_set_keymap
-- keymap('mode', 'mapping', 'what-its-mapping', 'options')
local opts = { noremap = true }
keymap('n', '<F8>', ':TagbarToggle<CR>' , opts) -- Toggles Tagbar
keymap('n', '<C-f>', ':NERDTreeFocus<CR>', opts) -- Focus on NerdTree
keymap('n', '<C-n>', ':NERDTree<CR>', opts) -- Open NerdTree
keymap('n', '<C-t>', ':NERDTreeToggle<CR>', opts) -- Toggle NerdTree

-- fzf --------------------------------------------------
require('lspfuzzy').setup {}

-- Colorscheme --------------------------------------------------
vim.cmd[[colorscheme gruvbox]]
