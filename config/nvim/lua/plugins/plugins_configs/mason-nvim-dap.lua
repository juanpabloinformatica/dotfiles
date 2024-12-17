local M = {}
M.config = function()
    require("mason-nvim-dap").setup({
        automatic_setup = true,
        ensure_installed = { "python", "cppdbg" },
        handlers = {
            function(config)
                -- all sources with no handler get passed here
                -- Keep original functionality
                require("mason-nvim-dap").default_setup(config)
            end,
            python = function(config)
                config.adapters = {
                    type = "executable",
                    command = "/home/jppm/.pyenv/shims/python",
                    args = {
                        "-m",
                        "debugpy.adapter",
                    },
                }
                require("mason-nvim-dap").default_setup(config) -- don't forget this!
            end,
        },
    })
    --Change icons
end
return M
