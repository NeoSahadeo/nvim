return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  },
  config = function ()
    require("mason").setup()
    require("mason-lspconfig").setup()
    local l = require('lspconfig')
    l.pyright.setup{
      on_attach = function ()
      end,
      settings = {
	pyright = {
	  autoImportCompletion = true,
	},
	python = {
	  analysis = {
	    -- reportFunctionMemberAccess = false,
	    -- reportUnusedImport = "none",
	    -- reportUnusedClass = "none",
	    -- reportUnusedFunction = "none",
	    -- reportUnusedVariable = "none",
	    -- autoSearchPaths = true,
	    -- diagnosticMode = 'openFilesOnly',
	    -- useLibraryCodeForTypes = true,
	    typeCheckingMode = 'off'
	  }
	}
      }
    }
    l.tsserver.setup{}
  end,
}
