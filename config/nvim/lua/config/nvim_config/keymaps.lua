-- local vim
vim.g.mapleader = " "
local keymap = vim.keymap
-- Better Buffer Navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
-- keymap.set("i", "jj", "<ESC>:noh<CR>", {})
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- noremap YY "+y<CR>
-- noremap <leader>p "+gP<CR>
-- noremap XX "+x<CR>
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>fz", ":FzfLua<CR>")
keymap.set("n", "<leader>ff", function()
	return require("fzf-lua").files()
end)
keymap.set("n", "<leader>fg", function()
	return require("fzf-lua").live_grep()
end)
keymap.set("n", "<leader>fal", function()
	return require("fzf-lua").args()
end)
-- move through arglist
--
--for quicklist
-- keymap.set("n","<leader>co",":copen<CR>")
--
keymap.set("n", "<leader>co", function()
	local qf_exists = false
	for _, win in pairs(vim.fn.getwininfo()) do
		if win["quickfix"] == 1 then
			qf_exists = true
		end
	end
	if qf_exists == true then
		vim.cmd("cclose")
		return
	end
	if not vim.tbl_isempty(vim.fn.getqflist()) then
		vim.cmd("copen")
	end
end)
keymap.set("n", "<leader>cn", ":cnext<CR>")
keymap.set("n", "<leader>cp", ":cprevious<CR>")
-- for toggling diagnostics
keymap.set("n", "<leader>sd", function()
	return vim.diagnostic.open_float()
end)

-- lsp
--
keymap.set("n", "<leader>fm", function()
	return vim.lsp.buf.format()
end)

-- Rename the variable under your cursor.
--  Most Language Servers support renaming across files, etc.
keymap.set("n", "grn", function()
	return vim.lsp.buf.rename()
end)

-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
keymap.set("n", "gra", function()
	return vim.lsp.buf.code_action()
end)

-- Find references for the word under your cursor.
keymap.set("n", "grr", function()
	return vim.lsp.buf.references()
end)

-- Jump to the implementation of the word under your cursor.
--  Useful when your language has ways of declaring types without an actual implementation.
keymap.set("n", "gri", function()
	return vim.lsp.buf.implementation()
end)

-- Jump to the definition of the word under your cursor.
--  This is where a variable was first declared, or where a function is defined, etc.
--  To jump back, press <C-t>.
keymap.set("n", "grd", function()
	return vim.lsp.buf.type_definition()
end)

-- WARN: This is not Goto Definition, this is Goto Declaration.
--  For example, in C this would take you to the header.
keymap.set("n", "grD", function()
	return vim.lsp.buf.declaration()
end)

-- Fuzzy find all the symbols in your current document.
--  Symbols are things like variables, functions, types, etc.
keymap.set("n", "gO", function()
	return vim.lsp.buf.document_symbol()
end)

-- Fuzzy find all the symbols in your current workspace.
--  Similar to document symbols, except searches over your entire project.
keymap.set("n", "gW", function()
	return vim.lsp.buf.signature_help()
end)

-- -- Jump to the type of the word under your cursor.
-- --  Useful when you're not sure what type a variable is and you want to see
-- --  the definition of its *type*, not where it was *defined*.
-- keymap.set('grt', , '[G]oto [T]ype Definition')
--

keymap.set("n", "gW", function()
	return vim.lsp.buf.signature_help()
end)
keymap.set("n","<leader>q", function()
	return vim.diagnostic.setloclist()
end)

-- for nvim-tree
keymap.set("n","<leader>e",":NvimTreeFocus<CR>")
keymap.set("n","<C-n>",":NvimTreeToggle<CR>")
