local v = vim.go

v.fillchars = 'eob: '
v.clipboard = 'unnamedplus'
v.undofile = true
v.ruler = true
-- v.tabstop = 4
-- v.shiftwidth = 2

vim.cmd('set nowrap')
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set signcolumn=yes')
vim.cmd('set tabstop=2')
vim.cmd('set shiftwidth=2')

vim.diagnostic.enable()
