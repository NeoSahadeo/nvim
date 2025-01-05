return {
	'NeoSahadeo/image-preview.nvim',
	-- dir = '/home/neosahadeo/Documents/Projects/image-preview.nvim',
	-- name = 'image-preview.nvim',
	init = function()
		require('image-preview').setup({
			mappings = {
				PreviewImage = {
					{ 'n' },
					' p', -- <leader>p
				},
			},
		})
	end,
}
