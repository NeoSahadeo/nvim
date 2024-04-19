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

-- Switch To previous file
K('n', '<C-x>', '<C-^>', opts)

-- Remove Control Z
K('n', '<C-z>', '')
K('v', '<C-z>', '')
K('i', '<C-z>', '')

-- Nerd Tree
K('n', '<C-p>', ':NERDTreeToggle<Cr>')

-- Recover Registers
function registerUpdate(command)
  vim.cmd('let @n=@+')
  vim.cmd(command)
  vim.cmd('let @+=@n')
end

-- Change Word Command
K('n', 'cw', function ()
  registerUpdate('norm ved')
  vim.cmd('startinsert')
  return 0
end, opts)

-- Past Command
-- https://www.reddit.com/r/neovim/comments/v7s1ts/comment/ibov8hd/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
K("x", "p", function()
  return 'pgv"'.. vim.v.register .. 'y'
end, {expr = true})
