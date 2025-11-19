local M = {}

M.config = function()
	local lspconfig = vim.lsp.config()
	lspconfig.clangd.enable({ on_attach })
	-- lspconfig.pyright.enable({ on_attach })
	lspconfig.bashls.enable({ on_attach })
	lspconfig.lua_ls.enable({ on_attach })
	lspconfig.gopls.enable({ on_attach })
	-- lspconfig.yamlls.enable({ on_attach })
	lspconfig.dockerls.enable({ on_attach })
end

return M
