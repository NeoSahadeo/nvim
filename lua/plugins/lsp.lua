return {
	"neovim/nvim-lspconfig",
  dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	init = function()
		require("mason").setup()
		require("mason-lspconfig").setup()

		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		local servers = {
			"lua_ls",
			"tsserver"
		}
		for _, server in ipairs(servers) do
			require('lspconfig')[server].setup({
				capabilities = capabilities,
			})
		end
	end
}
