return {
	-- {
	-- 	"Shatur/neovim-ayu",
	-- 	config = function()
	-- 		-- Add
	-- 		-- commentMore
	-- 		-- actions
	-- 		require("ayu").setup({
	-- 			mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
	-- 			overrides = {
	-- 				Normal = { bg = "#000000" },
	-- 			},
	-- 		})
	-- 		vim.cmd([[colorscheme ayu]])
	-- 		vim.cmd([[hi LineNr guifg=#b1b1b1]])
	-- 	end,
	-- },
	{
		"bettervim/yugen.nvim",
		config = function()
			vim.cmd.colorscheme("yugen")
		end,
	},
	{ "nvim-lua/plenary.nvim" },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({ automatic_enable = false })
		end,
	},
	{ "neovim/nvim-lspconfig", config = require("plugins.plugins_configs.nvim-lspconfig").config },

	-- Hrsh7th Code Completion Suite
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{ "hrsh7th/cmp-vsnip" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/vim-vsnip" },
	{ "hrsh7th/nvim-cmp", config = require("plugins.plugins_configs.nvim-cmp").config },
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({ override_by_filename = { [".astro"] = { icon = "A" } } })
		end,
	},
	-- { "nvim-tree/nvim-tree.lua",         config = require("plugins.plugins_configs.nvim-tree").config },
	-- fzf
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		dependencies = { "nvim-tree/nvim-web-devicons" },
		-- or if using mini.icons/mini.nvim
		-- dependencies = { "echasnovski/mini.icons" },
		opts = {},
	},

	-- Code Formatting
	{ "jose-elias-alvarez/null-ls.nvim", config = require("plugins.plugins_configs.null-ls").config },

	-- Commenting
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	-- Colorizer Utility
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	-- Auto-pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	-- Git
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~_" },
					untracked = { text = "┆" },
				},
				signs_staged = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~_" },
					untracked = { text = "┆" },
				},
			})
		end,
	},
	-- vim marks
	{ "kshenoy/vim-signature" },
	-- nvim-treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = require("plugins.plugins_configs.nvim-treesitter").config,
	},
	-- status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = require("plugins.plugins_configs.lualine"),
	},
	{
		"troydm/zoomwintab.vim",
	},
	-- perl regex syntax
	-- {'othree/eregex.vim'}
	--
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	-- {'tpope/vim-surround'},
}
