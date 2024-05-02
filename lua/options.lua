local v = vim.go

v.fillchars = 'eob: '
v.number = true
v.relativenumber = true
v.shiftwidth = 2
v.clipboard = 'unnamedplus'
v.wrap = false
v.undofile = true

vim.diagnostic.enable()
