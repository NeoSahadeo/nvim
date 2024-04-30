local k = vim.keymap.set
local kd = vim.keymap.del
local leader = ' '

-- Useful Shortcuts
k('n', '<C-x>', '<C-^>')
k('n', '<C-s>', ':w<Cr>')
k('n', '<C-a>', 'ggVG')
k({'v', 'i'}, '<C-s>', '<Esc>:w<Cr>')

-- Del key map doesnt work.
k({'n', 'v', 'i'}, '<C-z>', '')

-- Fuzzy Finder
k('n', '<C-f>', require('telescope.builtin').find_files)

-- Move text up and down
k('v', '<A-k>', ':m-2<CR>==gv')
k('v', '<A-j>', ":m'>+<CR>==gv")

-- Nerd Tree
k('n', '<C-p>', ':NERDTreeToggle<Cr>')

-- Past Command
-- https://www.reddit.com/r/neovim/comments/v7s1ts/comment/ibov8hd/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
k("x", "p", function()
  return 'pgv"'.. vim.v.register .. 'y'
end, {expr = true})

