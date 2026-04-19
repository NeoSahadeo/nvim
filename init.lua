require('config.options')
require('config.keymaps')
require('config.lazy')
require('config.autocmds')

-- vim.cmd('set background=dark')
vim.cmd('colorscheme kanagawa-dragon')
-- vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'svelte', 'python', 'javascript', 'typescript', 'rust', 'go', 'c', 'c++' },
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		vim.lsp.document_color.enable(false)
	end,
})
