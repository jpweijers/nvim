return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = { flavour = "latte" },
		priority = 1000,
	},
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			update_focused_file = {
				enable = true,
			},
		},
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {},
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
		ft = { "markdown" },
		opts = {},
	},
}
