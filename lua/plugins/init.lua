return {
	{
		"stevearc/conform.nvim",
		dependencies = { "neovim/nvim-lspconfig", "williamboman/mason.nvim" },
		lazy = false,
		event = "BufWritePre", -- uncomment for format on save
		config = function()
			require("configs.conform")
		end,
	},
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("configs.copilot")
		end,
	},
	{
		"vuki656/package-info.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		config = function()
			require("package-info").setup()
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = function()
			local conf = require("nvchad.configs.nvimtree")
			conf.git.ignore = false
			return conf
		end,
	},
}
