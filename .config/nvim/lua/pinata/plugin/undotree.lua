return {
    "mbbill/undotree",
    lazy = true,
    cmd = "UndotreeToggle",
    keys = function()
        return  {
            {
                "<leader>u",
                ":UndotreeToggle<CR>",
                desc = "Toggle Undotree",
            },
        }
    end
}
