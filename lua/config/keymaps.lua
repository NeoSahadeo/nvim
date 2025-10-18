local k = vim.keymap.set
local opts = {
	noremap = true,
	silent = true,
}
local eopts = {
	noremap = true,
	silent = true,
	expr = true,
}
local function save()
	vim.cmd(":w")
end

-- Useful maps
k("n", "c", '"_c', opts)
-- k({'n', 'v'}, 'd', '"_d', opts)
k("v", "p", "P", opts)
k("n", "<C-x>", "<C-^>", opts)
k("n", "<C-a>", "ggVG", opts)
k("n", "gd", vim.lsp.buf.definition, opts)
k("n", "<Esc>", ":nohl<Cr><Esc>", opts)
k({ "n", "i", "v", "x" }, "<C-z>", "", opts)

-- Easy Save
k("n", "<C-s>", save, opts)
k({ "i", "v" }, "<C-s>", "<Esc>:w<Cr>", opts)

-- Remove Ctrl-z
k({ "n", "i", "v" }, "<C-z>", function()
	print("use :q silly billy")
end, opts)

-- Move Code
k({ "v", "x" }, "<A-k>", ":m '<-2<Cr>gv=gv", opts)
k({ "v", "x" }, "<A-j>", ":m '>+1<Cr>gv=gv", opts)
k("n", ">", "V>gv", opts)
k("n", "<", "V<gv", opts)
k({ "v", "x" }, ">", ">gv", opts)
k({ "v", "x" }, "<", "<gv", opts)

-- Trouble https://youtu.be/4aQDOUbErNg
k({ "n" }, "<C-l>", "<cmd>Trouble diagnostics toggle<cr>", opts)
k({ "n" }, "<A-l>", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", opts)

-- k({ 'n' }, '<A-p>', '<cmd>GitBlameToggle<cr>', opts)
k({ "n" }, "<A-p>", "<cmd>ToggleLSP<cr>", opts)

k({ "n" }, "<A-g>", "<cmd>Telescope git_file_history<cr>", opts)
