-- Completion Configuration
local M = {}

M.config = function()
	-- Configure code suggestions
	vim.opt.completeopt = { "menuone", "noselect", "noinsert", "preview" }
	-- Configure shortmess to reduce messages
	vim.opt.shortmess:append("c")

	-- Setup cmp (completion plugin)
	local cmp = require("cmp")
	cmp.setup({
		-- Snippet configuration for vsnip
		snippet = {
			expand = function(args)
				vim.fn["vsnip#anonymous"](args.body)
			end,
		},
		mapping = {
			-- Key mappings for navigation
			["<S-Tab>"] = cmp.mapping.select_prev_item(),
			["<Tab>"] = cmp.mapping.select_next_item(),
			-- ["<C-n>"] = cmp.mapping.select_next_item(),
			-- ["<C-p>"] = cmp.mapping.select_prev_item(),
			["<C-S-f>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-b>"] = cmp.mapping.complete(),
			-- ["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.close(),
			-- Confirm suggestion with Enter
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Insert,
				select = true,
			}),
		},
		sources = {
			-- List of sources for suggestions
			{ name = "path" },
			{ name = "nvim_lsp", keyword_length = 3 },
			{ name = "nvim_lsp_signature_help" },
			{ name = "nvim_lua", keyword_length = 2 },
			{ name = "buffer", keyword_length = 2 },
			{ name = "vsnip", keyword_length = 2 },
		},
		formatting = {
			-- Customize suggestion item formatting
			fields = { "menu", "abbr", "kind" },
			format = function(entry, item)
				local menu_icon = {
					nvim_lsp = "λ",
					vsnip = "⋗",
					buffer = "b",
					path = "p",
				}
				item.menu = menu_icon[entry.source.name]
				return item
			end,
		},
	})
end

return M
