return {
	'NeoSahadeo/lsp-toggle.nvim',
	config = function()
		require('lsp-toggle').setup({
			max_height = 20,

			max_width = 30,

			---@type string[]
			exclude_lsp = {},

			---@type string[]|'double'|'none'|'rounded'|'shadow'|'single'|'solid'
			border = { '╔', '-', '╗', '║', '╝', '═', '╚', '║' },

			cache = true,

			---@type string|"file_type"|"file_name"
			cache_type = 'file_type',

			exclusive_mode = true,
		})
	end,
}
