return {
  'vim-airline/vim-airline',
  dependencies = {
    'vim-airline/vim-airline-themes',
  },
  lazy = false,
  config = function()
    vim.cmd([[:AirlineTheme blood_red]])
  end
}
