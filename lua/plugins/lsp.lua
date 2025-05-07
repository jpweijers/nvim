return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
	},

	opts = {
		servers = {
			lua_ls = {},
			ts_ls = {},
			eslint = {},
		},
	},
	config = function(_, opts)
		local lspconfig = require("lspconfig")
		for server, config in pairs(opts.servers) do
			lspconfig[server].setup(config)
		end

		local servers = opts.servers
		require("mason").setup({
			ensure_installed = servers,
		})
		require("mason-lspconfig").setup({
			ensure_installed = servers,
		})

		local formatters = { "prettier", "stylua" }
		require("mason-tool-installer").setup({
			ensure_installed = formatters,
		})
	end,
}
