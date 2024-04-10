require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>re1", "<cmd>NvimTreeResize 30<CR>", { desc = "Resize NvimTree" })
map("n", "<leader>re2", "<cmd>NvimTreeResize 50<CR>", { desc = "Resize NvimTree" })
map("n", "<leader>re3", "<cmd>NvimTreeResize 100<CR>", { desc = "Resize NvimTree" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>pf", "<cmd>echo expand('%:p')<CR>", { desc = "Print full path" })
