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
local function save() vim.cmd(':w') end
local builtin = require('telescope.builtin')

-- Useful maps
k('n', 'c', '"_c', opts)
-- k({'n', 'v'}, 'd', '"_d', opts)
k('v', 'p', 'P', opts)
k('n', '<C-x>', '<C-^>', opts)
k('n', '<C-a>', 'ggVG', opts)

-- Easy Save
k('n', '<C-s>', save, opts)
k({'i', 'v'}, '<C-s>', '<Esc>:w<Cr>', opts)

-- Remove Ctrl-z
k({'n', 'i', 'v'}, '<C-z>',
function ()
  print('use :q silly billy')
end, opts)

-- Move Code
k({'v', 'x'}, '<A-k>', ':m \'<-2<Cr>gv=gv', opts)
k({'v', 'x'}, '<A-j>', ':m \'>+1<Cr>gv=gv', opts)
k('n', '>', 'V>gv', opts)
k('n', '<', 'V<gv', opts)
k({'v', 'x'}, '>', '>gv', opts)
k({'v', 'x'}, '<', '<gv', opts)

-- Telescope
k('n', '<C-f>', builtin.find_files, opts)

-- NeoTree
k('n', '<C-p>', ':Neotree right toggle<Cr>', opts)
