return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettierd,
					require("none-ls.diagnostics.eslint_d"),
					null_ls.builtins.diagnostics.golangci_lint,
					null_ls.builtins.formatting.gofmt,
					null_ls.builtins.formatting.goimports,
				},
			})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = nil,
				automatic_installation = true,
			})
		end,
	},
}
