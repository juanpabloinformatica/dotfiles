-- Neovim Configuration Settings
-- Set up various Neovim configuration settings for an enhanced editing experience.
-- Define the mapleader (leader key) to be a space.
-- Uncomment and customize the maplocalleader if needed.
-- vim.g.maplocalleader = "\\"
vim.g.mapleader = " "
local opt = vim.opt
-- General Interface and Display Settings
-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = "utf-8"
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.signcolumn = "yes" -- Show signs in the signcolumn.
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400 -- Set the time in milliseconds for which mappings are awaited.
-- opt.undofile = true  -- Enable persistent undo.
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.ruler = true -- Hide the ruler.
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
-- opt.fillchars = { eob = " " } -- Customize characters to be displayed at the end of the buffer.
opt.ignorecase = true
opt.smartcase = true -- Use smart case for searches.
opt.updatetime = 250
--folding for nicer readability
-- opt.foldmethod="indent"
-- opt.foldmethod="expr"
-- opt.foldexpr="v:lua.vim.treesitter.foldexpr()"
-- opt.foldcolumn="1"
-- opt.foldtext="]]]"
opt.ruler = true
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.nvim/undo"
opt.undolevels = 10000
opt.wildmenu = true
-- vim.cmd([[colorscheme murphy]])
vim.g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro"
-- vim.opt.completeopt={"menuone","noselect","popup"}
-- fold

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"


-- for macros
opt.lazyredraw = true
-- vim.o.list = true
-- opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand='split'
