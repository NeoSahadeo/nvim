return {
	'ray-x/lsp_signature.nvim',
	event = 'VeryLazy',
	opts = {
		hint_prefix = {
			above = '↙ ', -- when the hint is on the line above the current line
			current = '← ', -- when the hint is on the same line
			below = '↖ ', -- when the hint is on the line below the current line
		},
		transparency = nil, -- disabled by default, allow floating win transparent value 1~100
		handler_opts = {
			border = 'rounded', -- double, rounded, single, shadow, none, or a table of borders
		},
	},
	config = function(_, opts)
		require('lsp_signature').setup(opts)
	end,
	init = function()
		vim.api.nvim_create_autocmd('LspAttach', {
			callback = function(args)
				local bufnr = args.buf
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if vim.tbl_contains({ 'null-ls' }, client.name) then -- blacklist lsp
					return
				end
				require('lsp_signature').on_attach({
					-- ... setup options here ...
				}, bufnr)
			end,
		})
		vim.keymap.set({ 'n', 'i', 'x', 'v' }, '<C-k>', function()
			require('lsp_signature').toggle_float_win()
		end, { silent = true, noremap = true, desc = 'toggle signature' })
	end,
}
