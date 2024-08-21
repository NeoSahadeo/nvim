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

		require("lspconfig").gdscript.setup({
			name = "godot",
			cmd = vim.lsp.rpc.connect("127.0.0.1", "6005"),
		})
	end
}
