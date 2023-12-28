return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- use { 'hrsh7th/nvim-cmp', config = [[require('config.nvim-cmp')]] }
    -- use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }
    -- use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }        -- buffer auto-completion
    -- use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }          -- path auto-completion
    -- use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }       -- cmdline auto-completion
    -- use 'L3MON4D3/LuaSnip'
    -- use 'saadparwaiz1/cmp_luasnip'
    use { "ellisonleao/gruvbox.nvim" }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use 'mhinz/vim-signify'
    use { 'tpope/vim-commentary' }

    use {'nvim-lua/plenary.nvim' }
    use {'nvim-telescope/telescope.nvim', tag = '0.1.2' }

    use { 'neoclide/coc.nvim', branch = 'release' }

    -- use { 'onsails/lspkind-nvim' }
    -- use { 'neovim/nvim-lspconfig' }
    -- use { 'ray-x/lsp_signature.nvim' }

    -- use { 'davidhalter/jedi-vim' }
    use { 'dense-analysis/ale' }
end)
