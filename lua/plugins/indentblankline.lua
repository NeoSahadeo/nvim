return{
	"lukas-reineke/indent-blankline.nvim",
	init = function ()
		require("ibl").setup({
			indent = {
				char = "│",
				tab_char = "│",
			},
		})
	end
}
