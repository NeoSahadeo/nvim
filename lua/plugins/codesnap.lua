return {
	"mistricky/codesnap.nvim",
	build = "make",
	config = function()
		local home_dir = vim.env.HOME
		require("codesnap").setup({
			mac_window_bar = false,
			bg_color = "#000000",
			themes_folder = home_dir .. "/.config/nvim/themes",
			watermark = "Neo Sahadeo",
			code_font_family = "Bitstream Vera Sans Mono",
			watermark_font_family = "Pacifico",
			breadcrumbs_separator = "/",
			has_breadcrumbs = false,
			has_line_number = false,
			show_workspace = false,
			min_width = 0,
			bg_x_padding = 0,
			bg_y_padding = 0,
		})
	end,
}
