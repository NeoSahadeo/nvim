return {
	"mistricky/codesnap.nvim",
	build = "make",
	config = function ()
		require("codesnap").setup({
			mac_window_bar = false,
			bg_theme = "sea",
			watermark = "Neo Sahadeo",
			bg_x_padding = 122,
			bg_y_padding = 82,
			bg_padding = nil
		})
	end
}
