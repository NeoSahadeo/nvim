local line_number = 0

vim.api.nvim_create_autocmd('BufWritePre', {
	callback = function(ev)
		line_number = vim.fn.line('.')
		vim.lsp.buf.format({ async = false })
	end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
	callback = function(ev)
		vim.cmd(string.format('%s', line_number))
	end,
})
