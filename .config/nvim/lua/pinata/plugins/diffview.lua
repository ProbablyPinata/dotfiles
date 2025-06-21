return {
    'sindrets/diffview.nvim',
    keys = {
        { "<leader>gdo", "<cmd>DiffviewOpen<cr>", mode = { "n" }},
        { "<leader>gdc", "<cmd>DiffviewClose<cr>", mode = { "n" }},
    },

    config = function ()
        require('diffview').setup({
        enhanced_diff_hl = true
        })
    end
}
