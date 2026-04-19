return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	init = function ()

		require('telescope').setup({
			defaults = {
				preview = {
					treesitter = false,
				},
			},
		})

		local builtin = require('telescope.builtin')

		local opts = {
			noremap = true,
			silent = true,
		}
		vim.keymap.set('n', '<C-f>', builtin.find_files, opts)
	end
}
