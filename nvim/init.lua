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
	use 'wbthomason/packer.nvim'
	if packer_bootstrap then
		require('packer').sync()
	end
end)

-- KEYMAPPINGS --------------------------------------------------
local keymap = vim.api.nvim_set_keymap
-- keymap('mode', 'mapping', 'what-its-mapping', 'options')
local opts = { noremap = true }
