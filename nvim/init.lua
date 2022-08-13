----------------------------------------------------
--
-- Packer options
-- https://github.com/wbthomason/packer.nvim
--	:PackerSync
--
---------------------------------------------------

-- Checks if packer repo is installed
-- If not then it will clone the repo
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
---------------------------------------------------

require('options') -- Basic VIM options
require('plugins') 
require('keybindings')
require('whichkey-config') -- Extra keybindings and info
require('lsp') -- Autocompletion 
require('treesitter-config') -- syntax highlighting
require('lualine-config') -- Status bar
require('bufferline-config') -- Tabs
require('autopairs-config') -- Automatically close characters
require('telescope-config') -- Fuzzy finder
require('colorizer-config') -- hex colors

-- Colorscheme --------------------------------------------------
vim.cmd[[colorscheme gruvbox]]
