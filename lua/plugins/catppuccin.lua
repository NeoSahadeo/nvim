return {
	'catppuccin/nvim',
	name = 'catppuccin',
	opts = {
		flavour = 'macchiato', -- latte, frappe, macchiato, mocha
		term_colors = true,
		transparent_background = true,
		priority = 1000,
		dim_inactive = {
			enabled = false, -- dims the background color of inactive window
			shade = 'dark',
			percentage = 0.15, -- percentage of the shade to apply to the inactive window
		},
		integrations = {
			cmp = true,
			gitsigns = true,
			treesitter = true,
			harpoon = true,
			telescope = true,
			mason = true,
			noice = true,
			notify = true,
			which_key = true,
			fidget = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { 'italic' },
					hints = { 'italic' },
					warnings = { 'italic' },
					information = { 'italic' },
				},
				underlines = {
					errors = { 'underline' },
					hints = { 'underline' },
					warnings = { 'underline' },
					information = { 'underline' },
					inlay_hints = {
						background = true,
					},
				},
				mini = {
					enabled = true,
					indentscope_color = '',
				},
			},
		},
	},
}
