function setupLSP()
    require("mason").setup()
    require("mason-lspconfig").setup()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local l = require('lspconfig')
    l.pyright.setup{
      on_attach = function ()
      end,
      capabilities = capabilities,
      settings = {
				pyright = {
					autoImportCompletion = true,
				},
				python = {
					analysis = {
						typeCheckingMode = 'off'
					}
				}
      }
    }
    l.tsserver.setup{
      capabilities = capabilities,
    }
    l.svelte.setup{
      capabilities = capabilities,
    }
		l.clangd.setup{
			capabilities = capabilities,
		}
		l.tailwindcss.setup{
			capabilities = capabilities,
		}
		l.cssmodules_ls.setup {
			on_attach = function (client)
				-- avoid accepting `definitionProvider` responses from this LSP
				client.server_capabilities.definitionProvider = false
				custom_on_attach(client)
			end,
			init_options = {
				camelCase = 'dashes',
			},
		}
		--Enable (broadcasting) snippet capability for completion
		local capa= vim.lsp.protocol.make_client_capabilities()
		capa.textDocument.completion.completionItem.snippetSupport = true
		require'lspconfig'.cssls.setup {
			capabilities = capa,
		}

		require'lspconfig'.html.setup {
			capabilities = capabilities,
		}
end

function setupCMP()
  local cmp = require('cmp')
  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
	-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
	-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
	require('snippy').expand_snippet(args.body) -- For `snippy` users.
	-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
	-- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })
end

function setupPrettier()
	local null_ls = require("null-ls")

	local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
	local event = "BufWritePre" -- or "BufWritePost"
	local async = event == "BufWritePost"

	null_ls.setup({
	  on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
		  vim.keymap.set("n", "<Leader>f", function()
			vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
		  end, { buffer = bufnr, desc = "[lsp] format" })

		  -- format on save
		  vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
		  vim.api.nvim_create_autocmd(event, {
			buffer = bufnr,
			group = group,
			callback = function()
			  vim.lsp.buf.format({ bufnr = bufnr, async = async })
			end,
			desc = "[lsp] format on save",
		  })
		end

		if client.supports_method("textDocument/rangeFormatting") then
		  vim.keymap.set("x", "<Leader>f", function()
			vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
		  end, { buffer = bufnr, desc = "[lsp] format" })
		end
	  end,
	})
	local prettier = require("prettier")

	prettier.setup({
	  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
	  filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
		"c",
		"svelte"
	  },
	  ["null-ls"] = {
		  condition = function()
			  return prettier.config_exists({
				  -- if `false`, skips checking `package.json` for `"prettier"` key
				  check_package_json = true,
			  })
		  end,
		  runtime_condition = function(params)
			  -- return false to skip running prettier
			  return true
		  end,
		  timeout = 5000,
	  },
	  cli_options = {
		  arrow_parens = "always",
		  bracket_spacing = true,
		  bracket_same_line = false,
		  embedded_language_formatting = "auto",
		  end_of_line = "lf",
		  html_whitespace_sensitivity = "css",
		  -- jsx_bracket_same_line = false,
		  jsx_single_quote = false,
		  print_width = 80,
		  prose_wrap = "preserve",
		  quote_props = "as-needed",
		  semi = true,
		  single_attribute_per_line = false,
		  single_quote = false,
		  tab_width = 2,
		  trailing_comma = "es5",
		  use_tabs = false,
		  vue_indent_script_and_style = false,
	  },
	})
end


return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'dcampos/nvim-snippy',
		'jose-elias-alvarez/null-ls.nvim',
		'MunifTanjim/prettier.nvim',
  },
  config = function ()
    setupCMP()
    setupLSP()
	setupPrettier()
  end,
}
