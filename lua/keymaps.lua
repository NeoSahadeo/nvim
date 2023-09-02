local opts = {
    noremap = true,
    silent = true,
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

-- Telescope
K('n', '<C-f>', ':Telescope find_files<Cr>', opts)

-- Tab AutoComplete

-- Duplicate Line/s
K('n', '<C-d>', 'Vyp', opts)
K('v', '<C-d>', 'yp', opts)
K('x', '<C-d>', 'yp', opts)

-- Commenting
K('n', '<Leader>/', ':Commentary<Cr>', opts)
K('v', '<Leader>/', ':Commentary<Cr>', opts)
K('x', '<Leader>/', ':Commentary<Cr>', opts)

-- Insert Mode Navigation
K('i', '<A-$>', '<Esc>$a')
K('i', '<A-^>', '<Esc>^i')
