return {
    'stevearc/oil.nvim',
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = true,
    keys = {
        { "<leader><leader>e", "<cmd>Oil<cr>", mode = { "n", "v"} }
    },
    opts = {
        watch_for_changes = true,
        view_options = {
            show_hidden = true
        },

        -- Configuration for the floating action confirmation window
        confirmation = {
            padding = 10,
            border = "solid",
            win_options = {
                winblend = 0,
            },
        },
    }
}
