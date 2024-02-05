return {
  'tpope/vim-commentary',
  keys = {
    { 
      '<leader>/', 
      '<cmd>:Commentary<CR>',
      mode = { 'n'}
    },
    {
      '<leader>/',
      ":Commentary<CR>",
      mode = { 'v' }
    }
  }
}
