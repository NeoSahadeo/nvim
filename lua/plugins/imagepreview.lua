return {
	"NeoSahadeo/image_preview.nvim",
	-- dir = "~/.config/nvim/lua/plugins/custom_plugins/image_preview.nvim",
	-- name = "image_preview.nvim",
	init = function ()
		require('image_preview').setup({
			mappings = {
				PreviewImage = {
						{"n"},
						" p"
				},
			},
			Options = {
				useFeh = true
			}
		})
	end
}
