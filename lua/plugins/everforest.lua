return {
	'sainnhe/everforest',
	init = function()
		vim.opt.background = 'dark'
		-- vim.g.everforest_background = 'hard'
		vim.g.everforest_better_performance = 1
		vim.g.everforest_transparent_background = 2
		vim.g.lightline = { colorscheme = 'everforest' }
	end,
}
