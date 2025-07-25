local M = {}

M.config = function()
	-- disable netrw at the very start of your init.lua
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
	-- optionally enable 24-bit colour
	vim.opt.termguicolors = true
	require("nvim-tree").setup({
		view = { relativenumber = true },
	})
end

return M
