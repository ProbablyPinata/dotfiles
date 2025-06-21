return {
    "echasnovski/mini.nvim",
    version = '*',
    lazy = false,
    mappings = {
        start = "ga",
        start_with_preview = "gA",

        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        left = '<M-h>',
        right = '<M-l>',
        down = '<M-j>',
        up = '<M-k>',

        -- Move current line in Normal mode
        line_left = '<M-h>',
        line_right = '<M-l>',
        line_down = '<M-j>',
        line_up = '<M-k>',
    },
    config = function()
        require("mini.align").setup()
        require("mini.move").setup()
    end
}
