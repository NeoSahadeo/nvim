return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use { "ellisonleao/gruvbox.nvim" }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'mhinz/vim-signify'
    use {'nvim-lua/plenary.nvim' }
    use {'nvim-telescope/telescope.nvim', tag = '0.1.2' }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'tpope/vim-surround' }

    use { 'numToStr/Comment.nvim' }
    use { 'JoosepAlviste/nvim-ts-context-commentstring' }
end)
