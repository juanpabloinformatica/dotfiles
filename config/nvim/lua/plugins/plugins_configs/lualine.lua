local M = {}

-- Define a function to configure the Gruvbox color scheme.
M.config = function()
	local lualine = require("lualine").setup({
		-- disabled_filetypes={"NvimTree"}
		extensions = { "nvim-tree" },
	})
	-- Set the background to "light."
	-- Apply the Gruvbox color scheme.
end

return M
