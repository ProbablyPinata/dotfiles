return {
    'hiphish/rainbow-delimiters.nvim',
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    event = 'BufEnter',

    config = function()
        require('rainbow-delimiters.setup').setup {
            strategy = {
                -- ...
            },
            query = {
                -- ...
            },
            highlight = {
                "TSRainbowYellow",
                "TSRainbowViolet",
                "TSRainbowRed",
                "TSRainbowOrange",
                "TSRainbowBlue",
            },
        }
    end
}
