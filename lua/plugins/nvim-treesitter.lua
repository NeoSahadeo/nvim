return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    vim.cmd([[:TSEnable highlight]])
  end,
  opts = {
    highlight = { enable = true },
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
  },
}
