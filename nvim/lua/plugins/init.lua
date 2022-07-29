require('packer').startup(function()
	-- Packer
	-- It can maintain iself
	use 'wbthomason/packer.nvim'

	-- Apperance 
	use 'gruvbox-community/gruvbox'
	use 'ryanoasis/vim-devicons'
	use 'glepnir/dashboard-nvim'

	-- Commands 
	use 'tpope/vim-surround' -- cs change surrounding
	use 'tpope/vim-commentary' -- gc comment section

	-- Extensibility
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	} -- statusline
	use 'preservim/nerdtree' -- file tree
	use 'preservim/tagbar' -- class outline preview
	use 'ap/vim-css-color' -- css color preview
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"} -- Treesitter highlighting
	use 'windwp/nvim-ts-autotag' -- Close tags in TS
	use 'p00f/nvim-ts-rainbow' -- Different color for each closing bracket
	use 'windwp/nvim-autopairs' -- Automatically close tags in HTML, CSS, JS, ect...
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'} -- Tabs manager
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
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
