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
keymap.set("n", "<leader>fm", function()
    return vim.lsp.buf.format()
end)
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
