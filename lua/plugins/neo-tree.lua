return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree reveal left <CR>", {})
		vim.keymap.set("n", "<C-b>", ":Neotree toggle <CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    local neo_tree = require("neo-tree")
    neo_tree.setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        }
      }
    })
	end
}
