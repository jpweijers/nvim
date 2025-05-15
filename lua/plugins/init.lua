return {
	{
		"stevearc/conform.nvim",
		version = "8.4.0",
		dependencies = { "neovim/nvim-lspconfig", "williamboman/mason.nvim" },
		lazy = false,
		event = "BufWritePre", -- uncomment for format on save
		config = function()
			require("configs.conform")
		end,
	},
	{ "williamboman/mason.nvim" },
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
			-- conf.git.ignore = false
			return conf
		end,
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
		ft = { "markdown" },
		config = function()
			require("render-markdown").setup({})
		end,
	},
}
