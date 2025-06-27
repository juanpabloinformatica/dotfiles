-- Null-ls Plugin Configuration

-- This code configures the null-ls plugin to provide code formatting using various tools.

local M = {}

-- Define a function to configure null-ls settings.
M.config = function()
	local null_ls = require("null-ls")

	-- Configure null-ls sources for code formatting.
	null_ls.setup({
		sources = {
			-- Use stylua for Lua formatting.
			null_ls.builtins.formatting.stylua,
			-- Use prettierd for various filetypes.
			null_ls.builtins.formatting.prettierd.with({
				filetypes = {
					"html",
					"markdown",
					"css",
					"sass",
					"scss",
					"javascript",
					"yaml",
					"json",
					"typescript",
				},
			}),
			-- Use black for Python formatting.
			null_ls.builtins.formatting.black,
			-- Add more formatting tools as needed.
			null_ls.builtins.formatting.clang_format,
			-- null_ls.builtins.formatting.sqlfmt,
			null_ls.builtins.formatting.gofumpt,
			null_ls.builtins.formatting.goimports_reviser,
			--ocaml
			null_ls.builtins.formatting.ocamlformat,
			null_ls.builtins.formatting.cmake_format,
			-- null_ls.builtins.formatting.cmake_lint,
			null_ls.builtins.formatting.latexindent,
		},
		debug = true, -- Enable debugging for null-ls.
	})
end

return M
