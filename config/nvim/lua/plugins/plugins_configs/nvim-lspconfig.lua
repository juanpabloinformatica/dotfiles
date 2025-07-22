local M = {}

M.config = function()
	local lspconfig = require("lspconfig")
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	--functional
	lspconfig.ocamllsp.setup({ on_attach })
	-- web
	lspconfig.html.setup({ on_attach = on_attach, capabilities = capabilities })
	-- lspconfig.cssls.setup({ on_attach = on_attach })
	--Enable (broadcasting) snippet capability for completion
	lspconfig.cssls.setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
	lspconfig.emmet_ls.setup({ on_attach })
	-- lspconfig.astro.setup({ on_attach })
	-- Backend languages LSP support --
	-- Uncomment and configure the desired language servers.
	-- Example: lspconfig.clangd.setup({ on_attach = function(client) ... end })
	-- lspconfig.clangd.setup({on_attach})
	lspconfig.clangd.setup({
		on_attach = on_attach,
	})
	-- lspconfig.jdtls.setup({ on_attach })
	lspconfig.pyright.setup({ on_attach })
	lspconfig.tsserver.setup({ on_attach })
	lspconfig.bashls.setup({ on_attach })
	lspconfig.lua_ls.setup({ on_attach })
	--devops--
	lspconfig.gopls.setup({ on_attach })
	lspconfig.yamlls.setup({ on_attach })
	lspconfig.dockerls.setup({ on_attach })
	lspconfig.nginx_language_server.setup({ on_attach })
	lspconfig.cmake.setup({ on_attach })
	lspconfig.vimls.setup({ on_attach })

	lspconfig.marksman.setup({ on_attach })
	lspconfig.texlab.setup({ on_attach })
	-- nginx
end

return M
