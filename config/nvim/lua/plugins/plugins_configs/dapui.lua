-- dapui Plugin Configuration

-- This code configures the null-ls plugin to provide code formatting using various tools.

local M = {}

-- Define a function to configure null-ls settings.
M.config = function()
    local dapui = require("dapui")

    dapui.setup({
        -- controls = {
        --     element = "repl",
        --     enabled = true,
        --     icons = {
        --         disconnect = "",
        --         pause = "",
        --         play = "",
        --         run_last = "",
        --         step_back = "",
        --         step_into = "",
        --         step_out = "",
        --         step_over = "",
        --         terminate = "",
        --     },
        -- },
        -- element_mappings = {},
        -- expand_lines = true,
        -- floating = {
        --     border = "single",
        --     mappings = {
        --         close = { "q", "<Esc>" },
        --     },
        -- },
        -- force_buffers = true,
        -- icons = {
        --     collapsed = "",
        --     current_frame = "",
        --     expanded = "",
        -- },
        -- layouts = {
        --     {
        --         elements = {
        --             {
        --                 id = "scopes",
        --                 size = 0.40,
        --             },
        --             {
        --                 id = "breakpoints",
        --                 size = 0.25,
        --             },
        --             {
        --                 id = "stacks",
        --                 size = 0.35,
        --             },
        --             -- {
        --             -- 	id = "watches",
        --             -- 	size = 0.00,
        --             -- },
        --         },
        --         position = "left",
        --         size = 50,
        --     },
        --     {
        --         elements = {
        --             {
        --                 id = "repl",
        --                 size = 1.0,
        --             },
        --             -- {
        --             -- 	id = "console",
        --             -- 	size = 0.0,
        --             -- },
        --         },
        --         position = "bottom",
        --         size = 10,
        --     },
        -- },
        -- mappings = {
        --     edit = "e",
        --     expand = { "<CR>", "<2-LeftMouse>" },
        --     open = "o",
        --     remove = "d",
        --     repl = "r",
        --     toggle = "t",
        -- },
        -- render = {
        --     indent = 1,
        --     max_value_lines = 100,
        -- },
    })
end

return M
