return {
    'hiphish/rainbow-delimiters.nvim',
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    event = { 'BufReadPre', 'BufNewFile' }, -- TODO: why does this work but BufEnter does not work if you open a single file?
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
