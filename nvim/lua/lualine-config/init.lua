local custom_gruvbox = require'lualine.themes.gruvbox'

custom_gruvbox.normal.a.bg = '#928374'
custom_gruvbox.normal.c.fg = '#ebdbb2'

require('lualine').setup({
    options = {theme = 'gruvbox'},
    sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	}
})
