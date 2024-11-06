return {
	'mistricky/codesnap.nvim',
	build = 'make',
	config = function()
		require('codesnap').setup({
			mac_window_bar = true,
			bg_color = '#000000',
			bg_theme = 'sea',
			watermark = 'Neo Sahadeo',
			code_font_family = 'CaskaydiaCove Nerd Font',
			watermark_font_family = 'Pacifico',
			breadcrumbs_separator = '/',
			has_breadcrumbs = false,
			has_line_number = false,
			show_workspace = false,
			min_width = 0,
			bg_x_padding = 0,
			bg_y_padding = 0,
		})
	end,
}
