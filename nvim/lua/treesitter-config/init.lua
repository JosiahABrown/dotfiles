require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all"
	ensure_installed = { "html", "javascript", "css", "python", "lua", "bash" },

	-- Automatically install missing parsers when entering buffer
	auto_install = true,

	highlight = {
		enable = true, -- `false` will disable the whole extension
		additional_vim_regex_highlighting = false,
	},
}
