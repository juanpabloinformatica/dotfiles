local M = {}

-- Define a function to configure the Gruvbox color scheme.
M.opts = {
	-- Define your formatters
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		c = { "clang-format" },
		sh = { "shfmt" }
	},
	-- Set default options
	default_format_opts = {
		lsp_format = "fallback",
	},
	-- Set up format-on-save
	-- format_on_save = { timeout_ms = 500 },
	-- Customize formatters
	formatters = {
		shfmt = {
			append_args = { "-i", "2" },
		},
	},
}


return M
