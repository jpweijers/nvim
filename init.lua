vim.g.mapleader = " "
vim.g.maplocalleader = " "

if vim.g.vscode then
	-- vs code settings
	vim.schedule(function()
		require("vscode-mappings")
	end)
else
	vim.opt.termguicolors = true
	require("config.lazy")
	require("mappings")
	vim.cmd.colorscheme("catppuccin-latte")
end
