require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>re1", "<cmd>NvimTreeResize 30<CR>", { desc = "Resize NvimTree" })
map("n", "<leader>re2", "<cmd>NvimTreeResize 50<CR>", { desc = "Resize NvimTree" })
map("n", "<leader>re3", "<cmd>NvimTreeResize 100<CR>", { desc = "Resize NvimTree" })

map("n", "<leader>pf", "<cmd>echo expand('%:p')<CR>", { desc = "Print full path" })

map("n", "<leader>bd", function()
	require("nvchad.tabufline").closeBufs_at_direction("right")
	require("nvchad.tabufline").closeBufs_at_direction("left")
end, { desc = "Close all buffers" })

-- package info
map("n", "<leader>ns", require("package-info").show, { desc = "Show Package Info" })
map("n", "<leader>nc", require("package-info").hide, { desc = "Close Package Info" })
map("n", "<leader>nt", require("package-info").toggle, { desc = "Toggle Package Info" })
map("n", "<leader>ni", require("package-info").install, { desc = "Install Package" })
map("n", "<leader>nu", require("package-info").update, { desc = "Update Package" })
map("n", "<leader>np", require("package-info").change_version, { desc = "Change Package Version" })

map("n", "c", '"_c', { desc = "Delete and enter insert mode" })
map("n", "cc", '"_cc', { desc = "Delete and enter insert mode" })
map("n", "ci", '"_ci', { desc = "Delete and enter insert mode" })
map("n", "d", '"_d', { desc = "Delete" })
map("n", "dd", '"_dd', { desc = "Delete" })

map("n", "<leader>vs", ":vsplit<CR>", { desc = "Split window" })

map("n", "<leader>gb", require("gitsigns").blame_line, { desc = "Git blame line" })
map("n", "<leader>gB", require("gitsigns").blame, { desc = "Git blame" })
