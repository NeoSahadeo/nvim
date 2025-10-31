return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},

	init = function()
		require("mason").setup()
		require("mason-lspconfig").setup({})

		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
					telemetry = {
						enable = false,
					},
				},
			},
		})
		vim.lsp.config("clangd", {
			cmd = { "clangd", "--background-index", "--clang-tidy", "--fallback-style=chromium" },
			init_options = {
				clangdFileStatus = true,
				usePlaceholders = true,
				completeUnimported = true,
			},
			settings = {},
		})
	end,
}
