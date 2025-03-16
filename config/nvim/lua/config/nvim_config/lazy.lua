-- Lazy Package Manager and Plugin Configuration

-- The following code initializes the Lazy package manager for Neovim and configures
-- the lazy-loading of plugins to enhance performance and startup times.

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if the 'lazy.nvim' repository exists in the specified path. If not, clone it.
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- Latest stable release
		lazypath,
	})
end

-- Prepend the 'lazypath' to the 'runtimepath' to enable Lazy package manager.
vim.opt.rtp:prepend(lazypath)

-- Setup Lazy package manager with plugin specifications and configuration options.
require("lazy").setup({
	spec = {
		-- Define plugin imports. Here, the 'import' key points to the 'plugins/' folder.
		{ import = "../plugins/" },
		-- Additional imports can be added here, such as LazyVim plugins or extras.
		-- { "LazyVim/LazyVim", import = "lazyvim.plugins" },
		-- { import = "lazyvim.plugins.extras.lang.typescript" },
		-- { import = "lazyvim.plugins.extras.lang.json" },
		-- { import = "lazyvim.plugins.extras.ui.mini-animate" },
		-- { import = "plugins" },  -- Import/override with your custom plugins.
	},
	defaults = {
		-- Control lazy-loading behavior. By default, custom plugins are not lazy-loaded.
		-- Set to 'true' to enable lazy-loading for all custom plugins.
		lazy = false,
		-- It's recommended to leave 'version' as 'false' to ensure the latest git commit is used.
		version = false, -- Always use the latest git commit.
		-- Example with versioning: 'version = "*"' tries the latest stable version for semver-supporting plugins.
	},
	checker = { enabled = true }, -- Automatically check for plugin updates.
})
