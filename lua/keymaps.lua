local opts = {
    noremap = true,
    silent = true,
}

k = vim.keymap.set

-- Quick Save
k('n', '<C-s>', ':w<Cr>', opts)
k('v', '<C-s>', '<Esc>:w<Cr>', opts)
k('i', '<C-s>', '<Esc>:w<Cr>', opts)
k('x', '<C-s>', '<Esc>:w<Cr>', opts)

-- Indenting
k('v', '>', '>gv', opts)
k('v', '<', '<gv', opts)

-- Select All
k('n', '<C-a>', 'ggVG', opts)

-- Quick Delete Line
k('n', '<C-Del>', 'dd', opts)
