return{
	"lukas-reineke/indent-blankline.nvim",
	init = function ()
		local has_file = vim.fn.expand('%') ~= ''
		if has_file then
			require("ibl").setup({
				indent = {
					char = "│",
					tab_char = "│",
				},
			})
		end
	end
}
