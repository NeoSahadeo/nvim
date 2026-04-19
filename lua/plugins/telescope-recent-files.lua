return {
	'smartpde/telescope-recent-files',
	dependencies = { 'nvim-telescope/telescope.nvim' },
	init = function()
		require("telescope").load_extension("recent_files")
	end
}
