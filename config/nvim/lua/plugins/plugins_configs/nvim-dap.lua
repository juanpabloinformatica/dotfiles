local M = {}

M.config = function()
    local dap = require("dap")
    dap.adapters.python = function(cb, config)
        if config.request == "attach" then
            ---@diagnostic disable-next-line: undefined-field
            local port = (config.connect or config).port
            ---@diagnostic disable-next-line: undefined-field
            local host = (config.connect or config).host or "127.0.0.1"
            cb({
                type = "server",
                port = assert(port, "`connect.port` is required for a python `attach` configuration"),
                host = host,
                options = {
                    source_filetype = "python",
                },
            })
        else
            cb({
                type = "executable",
                command = "/home/jppm/.local/share/nvim/mason/packages/debugpy/venv/bin/python",
                args = { "-m", "debugpy.adapter" },
                options = {
                    source_filetype = "python",
                },
            })
        end
    end
    dap.configurations.python = {
        {
            -- The first three options are required by nvim-dap
            type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
            request = "launch",
            name = "Launch file",

            -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

            program = "${file}", -- This configuration will launch the current file if used.
            pythonPath = function()
                -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
                -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
                -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
                local cwd = vim.fn.getcwd()
                if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
                    return cwd .. "/venv/bin/python"
                elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
                    return cwd .. "/.venv/bin/python"
                else
                    return "/usr/bin/python"
                end
            end,
        },
    }
    -- dap.adapters.gdb = {
    --     type = "executable",
    --     command = "gdb",
    --     args = {
    --         "--interpreter=dap",
    --         "--eval-command",
    --         "set print pretty on",
    --     },
    -- }
    --
    -- dap.configurations.c = {
    --     {
    --         name = "Launch",
    --         type = "gdb",
    --         request = "launch",
    --         -- arg="/home/jppm/Documents/ensimag/sem_7/ensimag-video/C/video/sample_1280x720_surfing_with_audio.ogx",
    --         args = function()
    --             local args_string = vim.fn.input("Input arguments: ")
    --             return vim.split(args_string, " ")
    --         end,
    --         program = function()
    --             return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --         end,
    --         cwd = "${workspaceFolder}",
    --         stopAtBeginningOfMainSubprogram = true,
    --     },
    --     {
    --         name = "Select and attach to process",
    --         type = "gdb",
    --         request = "attach",
    --         program = function()
    --             return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --         end,
    --         pid = function()
    --             local name = vim.fn.input("Executable name (filter): ")
    --             return require("dap.utils").pick_process({ filter = name })
    --         end,
    --         cwd = "${workspaceFolder}",
    --     },
    --     {
    --         name = "Attach to gdbserver :1234",
    --         type = "gdb",
    --         request = "attach",
    --         target = "localhost:1234",
    --         program = function()
    --             return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --         end,
    --         cwd = "${workspaceFolder}",
    --     },
    -- }
    -- dap.adapters.cppdbg = {
    --     id = "cppdbg",
    --     type = "executable",
    --     command = "/home/jppm/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
    -- }
    -- dap.configurations.cpp = {
    --     {
    --         name = "Launch file",
    --         type = "cppdbg",
    --         request = "launch",
    --         args = function()
    --             local args_string = vim.fn.input("Input arguments: ")
    --             return vim.split(args_string, " ")
    --         end,
    --         program = function()
    --             return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --         end,
    --         cwd = "${workspaceFolder}",
    --         stopAtEntry = true,
    --     },
    --     {
    --         name = "Attach to gdbserver :1234",
    --         type = "cppdbg",
    --         request = "launch",
    --         MIMode = "gdb",
    --         miDebuggerServerAddress = "localhost:1234",
    --         miDebuggerPath = "/usr/bin/gdb",
    --         cwd = "${workspaceFolder}",
    --         program = function()
    --             return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --         end,
    --     },
    -- }
    -- dap.configurations.c = dap.configurations.cpp
end

return M
