return {
	"folke/which-key.nvim",
	event = "VimEnter",
	opts = {
		delay = 500,
		mappings = true,
		spec = {
			{ "<leader>s", group = "[S]earch" },
		},
	},
}
