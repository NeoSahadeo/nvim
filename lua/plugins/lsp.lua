return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	},

	init = function()
		require('mason').setup()
		require('mason-lspconfig').setup()

		-- vim.lsp.config('svelte', {
		-- 	capabilities = {
		-- 		textDocument = {
		-- 			colorProvider = false,
		-- 		},
		-- 	},
		--

		local lspconfig = require('lspconfig')

		vim.lsp.config('kotlin_language_server', {
			cmd = { 'kotlin-language-server' },
			init_options = {
				storagePath = vim.fn.expand('$HOME/.kotlin-lsp-cache'),
			},
			filetypes = { 'kotlin', 'kt', 'kts' },
		})

		vim.lsp.config('pylsp', {
			settings = {
				pylsp = {
					plugins = {
						pycodestyle = {
							enabled = true, -- Keep enabled to apply ignores
							ignore = { 'W503' }, -- Your specific ignores
							maxLineLength = 88, -- Optional: adjust as needed
						},
					},
				},
			},
		})

		vim.lsp.config('lua_ls', {
			settings = {
				Lua = {
					runtime = {
						version = 'LuaJIT',
					},
					diagnostics = {
						globals = { 'vim' },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file('', true),
						checkThirdParty = false,
					},
					telemetry = {
						enable = false,
					},
				},
			},
		})

		vim.lsp.config('clangd', {
			cmd = {
				'clangd',
				'--completion-style=detailed',
				'--background-index',
				'--clang-tidy',
				'--fallback-style=chromium',
				-- '--fallback-style=microsoft',
				'--header-insertion=never',
			},
			init_options = {
				clangdFileStatus = true,
				usePlaceholders = true,
				completeUnimported = true,
			},
			settings = {},
		})
	end,
}
