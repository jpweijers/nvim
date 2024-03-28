return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>")
			vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
			vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")

			vim.api.nvim_create_autocmd("LspAttach", {
				desc = "LST actions",
				callback = function(event)
					local opts = { buffer = event.buf }

					vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
					vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
					vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
					vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
					vim.keymap.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
					vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
					vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
					vim.keymap.set("n", "grn", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
					vim.keymap.set({ "n", "x" }, "gf", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
					vim.keymap.set("n", "ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
				end,
			})

      local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

      local default_setup = function(server)
        require('lspconfig')[server].setup({
          capabilities = lsp_capabilities,
        })
      end,

      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = {},
        handlers = {
          default_setup,
        },
      })

      local cmp = require('cmp')

      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },
          { name = 'copilot' },
          { name = 'buffer' },
          { name = 'path' },
        },
        mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
          ['C-Space'] = cmp.mapping.complete(),
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })
		end,
	},
}
