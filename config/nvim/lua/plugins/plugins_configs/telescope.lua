-- local M = {}
--
-- M.config = function()
-- require("telescope").setup{
--   style = "borderless",
-- }
-- end
-- return M
local M = {}

M.config = function()
    local telescope = require("telescope")
    -- Set the highlights
    -- vim.api.nvim_set_hl(0, "TelescopeBorder", { ctermbg = 10 })
    -- vim.api.nvim_set_hl(0, "TelescopePromptBorder", { ctermbg = 238 })
    -- vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { ctermbg = 238 })
    -- vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { ctermbg = 238 })

    -- Set default options
    local defaults = {
        sorting_strategy = "ascending",
        layout_strategy = "bottom_pane",
        results_title = "",
        file_ignore_patterns = { "node_modules", ".pyc" },
        borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
        prompt_prefix = ":",
        preview = false,
        layout_config = {
            prompt_position = "bottom",
        },
    }
    -- Setup Telescope with your custom settings
    telescope.setup(defaults)
    -- telescope.load_extension("dap")
end

return M
