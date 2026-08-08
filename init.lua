require('config.options')
require('config.keymaps')
require('config.lazy')
require('config.autocmds')

vim.cmd('set background=dark')
vim.cmd('colorscheme kanagawa-dragon')
vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')
--
-- vim.treesitter.language.add(
-- 	'tsx',
-- 	{ path = '/home/neosahadeo/.local/share/tree-sitter/tree-sitter-typescript/tsx/parser.so' }
-- )
--
-- vim.treesitter.language.add(
-- 	'kotlin',
-- 	{ path = '/home/neosahadeo/.local/share/tree-sitter/tree-sitter-kotlin/kotlin.so' }
-- )

vim.treesitter.language.add('svelte', {
	path = '/home/neosahadeo/.local/share/tree-sitter/tree-sitter-svelte/svelte.so',
})

-- vim.treesitter.language.register('tsx', { 'typescriptreact' })
-- vim.treesitter.language.register('kotlin', { 'kotlin' })

vim.treesitter.language.register('svelte', { 'svelte' })

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'svelte', 'python', 'javascript', 'typescript', 'typescriptreact', 'rust', 'go', 'c', 'c++' },
	callback = function(args)
		pcall(vim.treesitter.start, args.buf)
	end,
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		vim.lsp.document_color.enable(false)
	end,
})
