return {
  'williamboman/mason.nvim',
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  lazy = false,
  config = function()
    require("mason").setup()
    require('mason-lspconfig').setup()

    local lspconfig = require('lspconfig')
    lspconfig.lua_ls.setup{}
    lspconfig.clangd.setup{}
    lspconfig.tsserver.setup{}
  end,
}
