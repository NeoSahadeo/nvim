local v = vim.go

v.fillchars = 'eob: '
v.shiftwidth = 2
v.clipboard = 'unnamedplus'
v.undofile = true
v.ruler = true

vim.cmd('set nowrap')
vim.cmd('set number')
vim.cmd('set relativenumber')

vim.diagnostic.enable()
