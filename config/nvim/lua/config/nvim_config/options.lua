-- Neovim Configuration Settings
-- Set up various Neovim configuration settings for an enhanced editing experience.
-- Define the mapleader (leader key) to be a space.
vim.g.mapleader = " "
-- Uncomment and customize the maplocalleader if needed.
-- vim.g.maplocalleader = "\\"
local opt = vim.opt
-- General Interface and Display Settings
-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = "utf-8"
--
-- Set options related to the appearance and behavior of Neovim.
-- Display the last status line (status line is always visible).
-- opt.laststatus = 3
-- opt.showmode = true
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.signcolumn = "yes" -- Show signs in the signcolumn.
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400 -- Set the time in milliseconds for which mappings are awaited.
opt.undofile = true  -- Enable persistent undo.
-- Line Numbers and Indentation
--
-- Configure line numbering and indentation settings.
-- Display line numbers.
opt.number = true
opt.numberwidth = 2
-- Uncomment the line below to enable relative line numbers.
opt.relativenumber = true
opt.ruler = true -- Hide the ruler.
-- Indentation settings: Use spaces instead of tabs, with a width of 2 spaces.
-- Preserve identation when copying paying from other part
-- opt.pastetoggle= <F2>
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.fillchars = { eob = " " } -- Customize characters to be displayed at the end of the buffer.
-- Search and Matching Settings
--
-- Configure search and matching behavior.
-- Ignore case when searching.
opt.ignorecase = true
opt.smartcase = true -- Use smart case for searches.
-- Set the update time interval (in milliseconds) for various operations.
opt.updatetime = 250

--folding for nicer readability
-- opt.foldmethod="indent"

-- Highlight trailing whitespace
-- vim.cmd([[highlight ExtraWhitespace ctermbg=red guibg=red]])
-- vim.cmd([[autocmd BufEnter * match ExtraWhitespace /\s\+$/]])
--
-- ruler
opt.ruler = true
-- Save undo tree in file
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.nvim/undo"
-- Number of undo saved
opt.undolevels = 10000
-- setting globals
vim.g.mkdp_browser = "firefox"

-- Better command line completion
opt.wildmenu = true
-- set gcr=a:blinkon0
-- opt.gcr = "a:blinkon0"
