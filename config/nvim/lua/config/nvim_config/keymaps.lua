local keymap = vim.keymap
-- Better Buffer Navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("i", "jj", "<ESC>:noh<CR>", {})
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- noremap YY "+y<CR>
-- noremap <leader>p "+gP<CR>
-- noremap XX "+x<CR>
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
