return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	},

	init = function()
		require('mason').setup()
		require('mason-lspconfig').setup({})
	end,
}
