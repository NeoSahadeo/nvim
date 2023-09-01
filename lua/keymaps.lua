local opts = {
    noremap = true,
    silent = true,
}

K = vim.keymap.set

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
