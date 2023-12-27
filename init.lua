require('options')
require('keymaps')
require('plugins')
require('colourscheme')

-- require('config.nvim-cmp')
-- require('config.lsp')
require('config.tree-sitter')
-- require('config.lspconfig')

require('config.signify')
require('config.coc')
require('config.telescope')
require('config.lsp_signature')

vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true
vim.bo.softtabstop = 2
