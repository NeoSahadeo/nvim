return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	},
	init = function()
		require('mason').setup()
		require('mason-lspconfig').setup({})
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		require('mason-lspconfig').setup_handlers({
			function(server_name)
				require('lspconfig')[server_name].setup({
					capabilities = capabilities,
				})
			end,
			-- ['godot'] = function()
			-- 	require('lspconfig').gdscript.setup({
			-- 		name = 'godot',
			-- 		cmd = vim.lsp.rpc.connect('127.0.0.1', '6005'),
			-- 	})
			-- end,
		})
	end,
}
