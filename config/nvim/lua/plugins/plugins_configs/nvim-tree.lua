local M = {}

M.config = function()
    require("nvim-tree").setup({
        sync_root_with_cwd = true,
            -- hijack_unnamed_buffer_when_opening = false,
            update_focused_file = {
                enable = true,
                update_cwd = true,
                ignore_list = {}
            },
            filters = {
                custom = {"^.git$"}
            },
            git = {
                enable = true
            },
            renderer = {
                -- indent_markers = {
                --     enable = true,
                --     icons = {
                --         corner = "└",
                --         edge = "│",
                --         item = "├",
                --         none = " "
                --     }
                -- },
                highlight_git = "none",
                icons = {
                    glyphs = {
                        folder = {
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = ""
                        },
                        git = {
                            unstaged = "",
                            staged = "",
                            unmerged = "",
                            renamed = "",
                            untracked = "",
                            deleted = "",
                            ignored = "󰴲"
                        }
                    }
                }
            },
            view = {
                width = 30,
                side = "left",
                signcolumn = "yes",
                relativenumber=true,
            },
            filesystem_watchers = {
                ignore_dirs = {"node_modules"}
            }
        
    })
    vim.cmd[["autocmd VimEnter * hi NvimTreeNormal guibg=NONE"]]
    vim.cmd[["autocmd VimEnter * hi NvimTreeNormalNC guibg=NONE"]]
end

return M
