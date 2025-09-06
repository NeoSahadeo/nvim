return {
	-- 'NeoSahadeo/lsp-toggle.nvim',
	'lsp-toggle.nvim',
	dir = '~/Documents/Projects/lsp-toggle.nvim',
	dev = true,
	config = function()
		require('lsp-toggle').setup()
	end,
}
