local map = vim.keymap.set

map("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
map("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
map("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

map("n", ";", ":", { desc = "CMD enter command mode" })

-- File tree
map("n", "<leader>re1", "<cmd>NvimTreeResize 30<CR>", { desc = "Resize NvimTree" })
map("n", "<leader>re2", "<cmd>NvimTreeResize 50<CR>", { desc = "Resize NvimTree" })
map("n", "<leader>re3", "<cmd>NvimTreeResize 100<CR>", { desc = "Resize NvimTree" })
map("n", "<leader>e", "<cmd>NvimTreeOpen<CR>", { desc = "Open NvimTree" })
map("n", "<leader>q", "<cmd>NvimTreeClose<CR>", { desc = "Close NvimTree" })
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

map("n", "<leader>pf", "<cmd>echo expand('%:p')<CR>", { desc = "Print full path" })

map("n", "<leader>bd", ":%bd|e#<CR>", { desc = "Close all buffers" })

map("n", "c", '"_c', { desc = "Delete and enter insert mode" })
map("n", "cc", '"_cc', { desc = "Delete and enter insert mode" })
map("n", "ci", '"_ci', { desc = "Delete and enter insert mode" })
map("n", "d", '"_d', { desc = "Delete" })
map("n", "dd", '"_dd', { desc = "Delete" })

map("n", "<leader>gb", require("gitsigns").blame_line, { desc = "Git blame line" })
map("n", "<leader>gB", require("gitsigns").blame, { desc = "Git blame" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "Format" })

-- Window management
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

map("n", "<leader>vs", ":vsplit<CR>", { desc = "Split window" })

-- LSP
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic Issue" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous Diagnostic Issue" })
map("n", "<leader>ca", vim.diagnostic.setloclist, { desc = "Code Actions (quick fixes)" })

map("n", "<leader>gd", require("telescope.builtin").lsp_definitions, { desc = "Go to definition" })
map("n", "<leader>gr", require("telescope.builtin").lsp_references, { desc = "Go to reference" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })

-- clear search highlights
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
