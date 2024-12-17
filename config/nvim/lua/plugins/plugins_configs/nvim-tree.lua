local M = {}

M.config = function()
    require("nvim-tree").setup({
        -- General Configuration
        disable_netrw = true,                 -- Disable Netrw file explorer
        hijack_netrw = true,                  -- Hijack Netrw buffer
        hijack_cursor = true,                 -- Hijack cursor when opening a file
        hijack_unnamed_buffer_when_opening = false, -- Do not hijack unnamed buffer
        sync_root_with_cwd = true,            -- Synchronize root with current working directory
        update_focused_file = {
            enable = true,                    -- Enable updating the focused file
            update_root = false,              -- Do not update the root
        },
        --
        -- -- Tree View Configuration
        view = {
            adaptive_size = false,     -- Disable adaptive size
            side = "left",             -- Position the tree on the left
            width = 30,                -- Set the width of the tree
            preserve_window_proportions = true, -- Preserve window proportions
            relativenumber = true,
        },
        --
        -- -- Git Integration Configuration
        git = {
            enable = false, -- Disable Git integration
            ignore = false, -- Ignore Git files
        },
        --
        -- -- Filesystem Watchers Configuration
        filesystem_watchers = {
            enable = true, -- Enable filesystem watchers
        },
        --
        -- -- Actions Configuration
        actions = {
            open_file = {
                resize_window = true, -- Resize window when opening a file
            },
        },
        --
        -- -- Renderer Configuration
        renderer = {
            root_folder_label = false, -- Disable root folder label
            highlight_git = true,   -- Disable Git highlighting
            highlight_opened_files = "none", -- No highlighting for opened files

            indent_markers = {
                enable = false, -- Disable indent markers
            },
            --
            icons = {
                show = {
                    file = true,
                    folder = true,
                    folder_arrow = true,
                    git = true,
                },

                -- glyphs = {
                --     default = "󰈚", -- Default glyph
                --     symlink = "", -- Symlink glyph
                --     folder = {
                --         -- default = "",
                --         default = "▸",
                --         empty = "▸",
                --         -- empty = "",
                --         -- empty_open = "",
                --         empty_open = "▾",
                --         -- open = "",
                --         open = "▾",
                --         symlink = "",
                --         symlink_open = "",
                --         -- arrow_open = "",
                --         arrow_open = "",
                --         -- arrow_closed = "",
                --         arrow_closed = "",
                --     },
                --     git = {
                --         unstaged = "✗",
                --         staged = "✓",
                --         unmerged = "",
                --         renamed = "➜",
                --         untracked = "★",
                --         deleted = "",
                --         ignored = "◌",
                --     },
                -- },
                -- glyphs = {
                --     default = "󰈚", -- Default glyph
                --     symlink = "", -- Symlink glyph
                --     folder = {
                --         -- default = "",
                --         default = "+",
                --         empty="+",
                --         -- empty = "",
                --         -- empty_open = "",
                --         empty_open = "+",
                --         -- open = "",
                --         open = "-",
                --         -- symlink = "",
                --         -- symlink_open = "",
                --         -- arrow_open = "",
                --         arrow_open = "",
                --         -- arrow_closed = "",
                --         arrow_closed = "",
                --     },
                --     git = {
                --         unstaged = "✗",
                --         staged = "✓",
                --         unmerged = "",
                --         renamed = "➜",
                --         untracked = "★",
                --         deleted = "",
                --         ignored = "◌",
                --     },
                -- },
            },
        },

        -- Additional Configuration Options
        --open_on_setup = true, -- Open NvimTree on setup
        --ignore_buffer_on_setup = true, -- Ignore buffer on setup
        --
    })
end

return M
