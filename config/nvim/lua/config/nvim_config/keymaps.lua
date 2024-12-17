-- Keymap Configurations

-- Define key mappings for enhanced navigation and productivity in Neovim.

local keymap = vim.keymap
-- Better Buffer Navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")

-- Toggle File Tree (NvimTree)
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- Telescope Key Mappings
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})
keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, {})
keymap.set("n", "<leader>gb", builtin.git_branches, {})
keymap.set("n", "<leader>gt", builtin.git_status, {})
keymap.set("n", "<leadger>gs", builtin.git_stash, {})
keymap.set("n", "<leader>gm", builtin.git_commits, {})
-- Use "jj" to exit insert mode and <leader>x to close the current split window.
keymap.set("i", "jj", "<ESC>:noh<CR>", {})
-- Format Current Buffer with LSP
-- Use <leader>fm to format the current buffer using the Language Server Protocol (LSP).
-- - `gcc`: Toggles the current line using linewise comment.
-- - `gbc`: Toggles the current line using blockwise comment.
-- Preview in firefox
keymap.set("n", "<leader>pv", ":!firefox %<CR>")
-- Better vertical movement
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- better for handling taps
-- keymap.set("n","<leader>nt",":tabnew<CR>")

-- lsp keymaps
-- from kickstart
keymap.set("n", "gd", function()
	-- return require("telescope.builtin").lsp_definitions()
	return vim.lsp.buf.definition()
end)
-- Jump to the implementation of the word under your cursor.
--  Useful when your language has ways of declaring types without an actual implementation.
keymap.set("n", "gI", function()
	return vim.lsp.buf.implementation()
	-- return require("telescope.builtin").lsp_implementations()
end)

-- Fuzzy find all the symbols in your current document.
--  Symbols are things like variables, functions, types, etc.
keymap.set("n", "<leader>ds", function()
	-- return require("telescope.builtin").lsp_document_symbols()
	return vim.lsp.buf.document_symbol()
end)

-- Rename the variable under your cursor.
--  Most Language Servers support renaming across files, etc.
--  be carefull with this c/c++ some problems
keymap.set("n", "<leader>rn", function()
	return vim.lsp.buf.rename()
	-- return vim.lsp.util.rename()
end)
-- WARN: This is not Goto Definition, this is Goto Declaration.
--  For example, in C this would take you to the header.
keymap.set("n", "gD", function()
	return vim.lsp.buf.declaration()
end)

keymap.set("n", "gr", function()
	return vim.lsp.buf.references()
end)

keymap.set("n", "<leader>D", function()
	return require("telescope.builtin").lsp_type_definitions()
end)

-- Tabs
keymap.set("n", "<Tab>", "gt")
keymap.set("n", "<S-Tab>", "gT")
keymap.set("n", "<S-t>", ":tabnew<CR>")
-- nnoremap <Tab> gt
-- nnoremap <S-Tab> gT
-- nnoremap <silent> <S-t> :tabnew<CR>
-- tagbar
keymap.set("n", "<leader>i", ":TagbarToggle<CR>")

-- noremap YY "+y<CR>
-- noremap <leader>p "+gP<CR>
-- noremap XX "+x<CR>
--buffer nav
--noremap <leader>z :bp<cr>
--noremap <leader>q :bp<cr>
--noremap <leader>x :bn<cr>
--noremap <leader>w :bn<cr>
--noremap <leader>c :bd<CR>
-- Vmap for maintain Visual Mode after shifting > and <
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Move visual block
-- vnoremap J :m '>+1<CR>gv=gv
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vnoremap K :m '<-2<CR>gv=gv
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- local map = function(keys, func, desc, mode)
--     mode = mode or "n"
--     vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
-- end
-- map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
--
-- -- Find references for the word under your cursor.
-- map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
--
-- -- Jump to the implementation of the word under your cursor.
-- --  Useful when your language has ways of declaring types without an actual implementation.
-- map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
--
-- -- Jump to the type of the word under your cursor.
-- --  Useful when you're not sure what type a variable is and you want to see
-- --  the definition of its *type*, not where it was *defined*.
-- map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
--
-- -- Fuzzy find all the symbols in your current document.
-- --  Symbols are things like variables, functions, types, etc.
-- map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
