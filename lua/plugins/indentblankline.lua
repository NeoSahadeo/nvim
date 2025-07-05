return {
	'lukas-reineke/indent-blankline.nvim',
	main = 'ibl',
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
		local highlight = {
			'BigBlackMen',
		}

		local hooks = require('ibl.hooks')
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, 'BigBlackMen', { fg = '#2F2F2F' })
		end)

		require('ibl').setup({
			indent = {
				highlight = highlight,
				char = '·',
				tab_char = '·',
			},
		})
	end,
}
