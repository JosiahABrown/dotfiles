require('packer').startup(function()
	-- Packer
	-- It can maintain iself
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
    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

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