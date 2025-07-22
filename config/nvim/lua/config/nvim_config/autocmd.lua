-- display args
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client.server_capabilities.inlayHintProvider then
            vim.lsp.inlay_hint.enable(true)
            -- autocompletition
            -- vim.lsp.completion.enable(true)
        end
    end,
})

-- This allows me to cd to .git repository root better for fzf
vim.api.nvim_create_autocmd({ "BufWinEnter", "BufEnter" }, {
    callback = function(args)
    --     local handle = io.popen("git rev-parse --show-toplevel")
    --     local result = handle:read("*a")
    --     handle:close()
    --     if result then
    --         vim.cmd("cd" .. result)
    --     end
    end,
})
