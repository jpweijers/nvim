return {
	{
		"arkav/lualine-lsp-progress",
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "dracula",
					sections = {
						lualine_c = {
							"lsp_progress",
						},
					},
				},
			})
		end,
	},
}
