return {
    'stevearc/oil.nvim',
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    event = "VimEnter",
    config = true,
    keys = {
        { "<leader>e", "<cmd>Oil<cr>", mode = { "n", "v"} }
    },
    opts = {
        view_options = {
            show_hidden = true
        }
    }
}
