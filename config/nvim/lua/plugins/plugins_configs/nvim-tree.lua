local M = {}

M.config = function()
    require("nvim-tree").setup(
    {
        view={relativenumber=true}
    })
end

return M
