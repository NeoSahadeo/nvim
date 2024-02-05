return {
  'nvim-telescope/telescope.nvim',
  keys = {
    {
      '<C-f>',
      function()
        require('telescope.builtin').find_files()
      end
    }
  },
  opts = {
    defaults = {
      file_ignore_patterns = {
        'node_modules',
        'env',
        'venv',
      }
    },
    pickers = {
      find_files = {
        theme = 'dropdown',
      }
    },
    extensions = {
      -- ..
    }
  }
}
