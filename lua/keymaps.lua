local opts = {
    silent = true,
    noremap = true,
}
local coc_opts = {
    silent = true,
    noremap = true,
    expr = true,
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

-- Incrementing
K('n', '<C-n>', '<C-a>', opts)
K('v', '<C-n>', '<C-a>', opts)

-- Select All
K('n', '<C-a>', 'ggVG', opts)

-- Quick Delete Line
K('n', '<C-Del>', 'dd', opts)

-- Move text up and down
K("v", "<A-k>", ":m-2<CR>==gv", opts)
K("v", "<A-j>", ":m'>+<CR>==gv", opts)

-- Telescope
K('n', '<C-f>', ':Telescope find_files<Cr>', opts)

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

-- COC keybinds
vim.keymap.set('i', '<Cr>',
function() 
    -- Returns 1 if visible, 0 if not
    is_visible = vim.fn['coc#pum#visible']()
    if is_visible == 1 then
        return vim.fn['coc#pum#confirm']()
    else
        return '<Cr>'
    end
end, coc_opts)

-- Autoclosing
-- K('i', "'", "''<Esc>i", opts)
-- K('i', '"', '""<Esc>i', opts)
-- K('i', '(', '()<Esc>i', opts)
-- K('i', '[', '[]<Esc>i', opts)
-- K('i', '{', '{}<Esc>i', opts)

-- Quick Repeat
-- K('n', '!', ':&&<Cr>', opts)
--
-- Switch To previous file
K('n', '<C-x>', '<C-^>')

-- Remove Control Z
K('n', '<C-z>', '')
K('v', '<C-z>', '')
K('i', '<C-z>', '')

-- Quick file exlporer
K('n', '<C-e>', ':Ex<Cr>')
K('v', '<C-e>', ':Ex<Cr>')
K('i', '<C-e>', ':Ex<Cr>')
