vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.background = "light"

-- disable arrow keys
vim.keymap.set("n", "<left>", '<cmd>echo "use hjkl to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "use hjkl to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "use hjkl to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "use hjkl to move!!"<CR>')

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmode = false

vim.opt.signcolumn = "yes"
vim.opt.splitright = true
vim.opt.splitbelow = true

-- vim.opt.list = true
vim.opt.inccommand = "split"

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })

vim.cmd("set scrolloff=10")

vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>Q", ":q!<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>wqa", ":wqa<CR>")

vim.keymap.set("n", "<leader>bdd", "%bd|e#<CR>")
