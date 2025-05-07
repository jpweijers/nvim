return {
	"stevearc/conform.nvim",
	version = "8.4.0",
	dependencies = { "neovim/nvim-lspconfig", "williamboman/mason.nvim" },
	lazy = false,
	event = "BufWritePre",

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			css = { "prettier" },
			html = { "prettier" },
			-- go = { "gofumpt", "goimports", "golangci-lint" },
			vue = { "prettier" },
			typescript = { { "prettier" } },
			typescriptreact = { { "prettierd" } },
			python = { "isort", "black" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
