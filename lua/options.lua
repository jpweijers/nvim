vim.g.have_nerd_font = true

local opt = vim.opt

opt.cursorline = true
opt.cursorlineopt = "both"

opt.termguicolors = true
opt.hidden = true
opt.relativenumber = true
opt.number = true

opt.scrolloff = 8

opt.mouse = "a"

vim.opt.undofile = true

vim.opt.showmode = false

-- Sync clip board between nvim and OS
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/code/mais/.vscode/mais.code-snippets" } })
