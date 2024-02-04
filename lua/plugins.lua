return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use { "ellisonleao/gruvbox.nvim" }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'mhinz/vim-signify'
    use {'nvim-lua/plenary.nvim' }
    use {'nvim-telescope/telescope.nvim', tag = '0.1.2' }

    use { 'tpope/vim-surround' }
    use { 'vim-airline/vim-airline' }
    use { 'numToStr/Comment.nvim' }
    use { 'JoosepAlviste/nvim-ts-context-commentstring' }

    use { "williamboman/mason.nvim" }
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!:).
      run = "make install_jsregexp"
    }
end)
