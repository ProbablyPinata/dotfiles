return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        keys = {
            "<leader><leader>a",
            "<cmd>Copilot toggle<CR>",
            desc = "Toggle Copilot"
        },

        config = function()
            require("copilot").setup({
                 suggestion = {
                     auto_trigger = true
                 }
            })
        end,
    },
}

