return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	},
	init = function()
		require('mason').setup()
		require('mason-lspconfig').setup()

		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		require('mason-lspconfig').setup_handlers({
			-- The first entry (without a key) will be the default handler
			-- and will be called for each installed server that doesn't have
			-- a dedicated handler.
			function(server_name) -- default handler (optional)
				require('lspconfig')[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})
		require('lspconfig').gdscript.setup({
			name = 'godot',
			cmd = vim.lsp.rpc.connect('127.0.0.1', '6005'),
		})
		require('lspconfig').html.setup({
			capabilities = capabilities,
		})
	end,
}

-- local servers = {
-- 	"lua_ls",
-- 	"tsserver",
-- 	"pylsp"
-- }
-- for _, server in ipairs(servers) do
-- 	require('lspconfig')[server].setup({
-- 		capabilities = capabilities,
-- 	})
-- end

-- require("lspconfig").gdscript.setup({
-- 	name = "godot",
-- 	cmd = vim.lsp.rpc.connect("127.0.0.1", "6005"),
-- })
