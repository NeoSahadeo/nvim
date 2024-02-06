local opts = {
    silent = true,
    noremap = true,
}

K = vim.keymap.set
vim.g.mapleader = ' '

-- Quick Save
K('n', '<C-s>', ':w<Cr>', opts)
K('v', '<C-s>', '<Esc>:w<Cr>', opts)
K('i', '<C-s>', '<Esc>:w<Cr>', opts)
K('x', '<C-s>', '<Esc>:w<Cr>', opts)

-- Indenting
K('v', '>', '>gv', opts)
K('v', '<', '<gv', opts)

-- Select All
K('n', '<C-a>', 'ggVG', opts)

-- Quick Delete Line
K('n', '<C-Del>', 'dd', opts)

-- Move text up and down
K("v", "<A-k>", ":m-2<CR>==gv", opts)
K("v", "<A-j>", ":m'>+<CR>==gv", opts)

-- Duplicate Line/s -- fix
K('n', '<C-d>', 'Vyp', opts)
K('v', '<C-d>', 'yp', opts)
K('x', '<C-d>', 'yp', opts)

-- Switch To previous file
K('n', '<C-x>', '<C-^>')

-- Remove Control Z
K('n', '<C-z>', '')
K('v', '<C-z>', '')
K('i', '<C-z>', '')
