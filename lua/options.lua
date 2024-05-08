local v = vim.go

v.fillchars = 'eob: '
v.clipboard = 'unnamedplus'
v.undofile = true
v.ruler = true
v.tabstop = 4
v.shiftwidth = 4
v.signcolumn = 'yes'

vim.cmd('set nowrap')
vim.cmd('set number')
vim.cmd('set relativenumber')

vim.diagnostic.enable()
