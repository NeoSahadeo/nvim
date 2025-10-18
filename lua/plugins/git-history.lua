return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{
			"isak102/telescope-git-file-history.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"tpope/vim-fugitive",
			},
		},
	},
	config = function()
		local gfh_actions = require("telescope").extensions.git_file_history.actions
		require("telescope").setup({
			extensions = {
				git_file_history = {
					-- Keymaps inside the picker
					mappings = {
						i = {
							["<C-g>"] = gfh_actions.open_in_browser,
						},
						n = {
							["<C-g>"] = gfh_actions.open_in_browser,
						},
					},

					-- The command to use for opening the browser (nil or string)
					-- If nil, it will check if xdg-open, open, start, wslview are available, in that order.
					browser_command = nil,
				},
			},
		})

		require("telescope").load_extension("git_file_history")
	end,
}
