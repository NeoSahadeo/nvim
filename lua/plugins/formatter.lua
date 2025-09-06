return {
	'mhartington/formatter.nvim',
	config = function()
		local augroup = vim.api.nvim_create_augroup
		local autocmd = vim.api.nvim_create_autocmd
		augroup('__formatter__', { clear = true })
		autocmd('BufWritePost', {
			group = '__formatter__',
			command = ':FormatWrite',
		})
		-- Utilities for creating configurations
		local util = require('formatter.util')

		-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
		require('formatter').setup({
			-- Enable or disable logging
			logging = false,
			-- Set the log level
			log_level = vim.log.levels.WARN,
			-- All formatter configurations are opt-in
			filetype = {
				php = {
					require('formatter.filetypes.php').phpcbf,
				},
				typescript = {
					require('formatter.filetypes.typescript').prettier,
				},
				typescriptreact = {
					require('formatter.filetypes.typescript').prettier,
				},
				svelte = {
					require('formatter.filetypes.svelte').prettier,
				},
				html = {
					require('formatter.filetypes.html').prettier,
				},
				css = {
					require('formatter.filetypes.css').prettier,
				},
				javascript = {
					require('formatter.filetypes.javascript').prettier,
					function()
						return {
							exe = 'prettier',
							args = {
								'--stdin-filepath',
								util.escape_path(util.get_current_buffer_file_name()),
							},
							stdin = true,
						}
					end,
				},
				python = {
					require('formatter.filetypes.python').autopep8,
				},
				cpp = {
					-- require('formatter.filetypes.cpp').clangformat,
					-- function()
					-- 	return {
					-- 		exe = 'clang-format',
					-- 		args = {
					-- 			'-style=\'{BasedOnStyle: LLVM, BreakBeforeBraces: Allman }\'',
					-- 			'-assume-filename',
					-- 			util.escape_path(util.get_current_buffer_file_name()),
					-- 		},
					-- 		stdin = true,
					-- 		try_node_modules = true,
					-- 	}
					-- end
				},
				c = {
					-- require('formatter.filetypes.c').clangformat,
					-- function()
					-- 	return {
					-- 		exe = 'clang-format',
					-- 		args = {
					-- 			'-style=\'{BasedOnStyle: LLVM, BreakBeforeBraces: Allman }\'',
					-- 			'-assume-filename',
					-- 			util.escape_path(util.get_current_buffer_file_name()),
					-- 		},
					-- 		stdin = true,
					-- 		try_node_modules = true,
					-- 	}
					-- end,
				},
				lua = {
					require('formatter.filetypes.lua').stylua,

					function()
						return {
							exe = 'stylua',
							args = {
								'--quote-style ForceSingle',
								'--search-parent-directories',
								'--stdin-filepath',
								util.escape_path(util.get_current_buffer_file_path()),
								'--',
								'-',
							},
							stdin = true,
						}
					end,
				},

				['*'] = {
					-- "formatter.filetypes.any" defines default configurations for any
					-- filetype
					require('formatter.filetypes.any').remove_trailing_whitespace,
				},
			},
		})
	end,
}
