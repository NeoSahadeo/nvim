vim.filetype.add({
	extension = {
		jinja = 'jinja',
		jinja2 = 'jinja',
		j2 = 'jinja',
	},
})

-- if you want to debug
vim.lsp.set_log_level('debug')

local nvim_lsp = require('lspconfig')
