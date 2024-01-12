require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python" },

  highlight = {
    enable = true
  },
  indent = { enable = false},
}
