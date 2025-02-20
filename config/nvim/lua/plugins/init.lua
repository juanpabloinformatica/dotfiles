print("here")
return {
    --     "Shatur/neovim-ayu",
    --     config = function()
    --         require("ayu").setup({
    --             mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    --             overrides = {
    --                 Normal = { bg = "#000000" },
    --             },
    --         })
    --         vim.cmd([[colorscheme ayu]])
    --         vim.cmd([[hi LineNr guifg=#b1b1b1]])
    --     end,
    -- },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup()
        end,
    },
    { "neovim/nvim-lspconfig",              config = require("plugins.plugins_configs.nvim-lspconfig").config },
    -- Uncomment and configure Java LSP if needed
    -- {
    --     "mfussenegger/nvim-jdtls",
    --     config = require("plugins.plugins_configs.nvim-jdtls").config,
    -- },

    -- Hrsh7th Code Completion Suite
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-nvim-lsp-signature-help" },
    { "hrsh7th/cmp-vsnip" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/vim-vsnip" },
    { "hrsh7th/nvim-cmp",                   config = require("plugins.plugins_configs.nvim-cmp").config },
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({ override_by_filename = { [".astro"] = { icon = "A" } } })
        end,
    },
    { "nvim-tree/nvim-tree.lua",         config = require("plugins.plugins_configs.nvim-tree").config },

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

    -- Indenting
    -- {
    --     "lukas-reineke/indent-blankline.nvim",
    --     main = "ibl",
    --     opts = {},
    --     config = function()
    --         require("ibl").setup()
    --     end,
    -- },

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
            require("gitsigns").setup()
        end,
    },
    -- { "tpope/vim-fugitive" },
    -- Find Files with Telescope
    -- {
    -- 	"nvim-telescope/telescope-dap.nvim",
    -- },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = require("plugins.plugins_configs.telescope").config,
    },
    -- sessions
    {
        { "tpope/vim-obsession" },
    },
    -- vim marks
    { "kshenoy/vim-signature" },
    -- better navigation
    -- { "easymotion/vim-easymotion" },
    -- debug
    -- dependencie for dap-u
    -- {
    -- 	"mfussenegger/nvim-dap",
    -- 	dependencies = {
    -- 		"rcarriga/nvim-dap-ui",
    -- 		dependencies = {
    -- 			"mfussenegger/nvim-dap",
    -- 			"nvim-neotest/nvim-nio",
    -- 		},
    -- 	},
    -- 	config = require("plugins.plugins_configs.nvim-dap").config,
    -- },
    -- {
    --     "jay-babu/mason-nvim-dap.nvim",
    --     dependencies = {
    --         "williamboman/mason.nvim",
    --         "mfussenegger/nvim-dap",
    --     },
    --     config = require("plugins.plugins_configs.mason-nvim-dap").config,
    -- },

    -- {
    -- 	"rcarriga/nvim-dap-ui",
    -- 	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    -- 	config = require("plugins.plugins_configs.dapui").config,
    -- 	-- require("dapui").setup()
    -- },
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
    -- Inactive windows
    {
        "blueyed/vim-diminactive",
        config = function()
            vim.cmd([[highlight ColorColumn ctermbg=0 guibg=#081C23]])
        end,
    },
    -- zoomIn, zoomOut plugin
    {
        "troydm/zoomwintab.vim",
    },
    -- install without yarn or npm
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && npx install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    -- undo tree
    -- { "simnalamburt/vim-mundo" },
    -- { "mbbill/undotree" },
    -- tagbar useful for see the whole code structure and quick navigation
    { "majutsushi/tagbar" },
    -- for man page
    --
    { "ludwig/split-manpage.vim" },
    -- for c/c++
    -- { "vim-scripts/c.vim" },
    -- {"sjl/bad"}
    -- for generating tags
    -- debugging
    -- { "epheien/termdbg" },
    -- },
}
