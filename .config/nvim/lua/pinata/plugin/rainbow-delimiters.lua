return {
    'hiphish/rainbow-delimiters.nvim',
    event = 'BufReadPost',

    config = function()
        require('rainbow-delimiters.setup').setup {
            strategy = {
                -- ...
            },
            query = {
                -- ...
            },
            highlight = {
                'RainbowDelimiterYellow',
                'RainbowDelimiterBlue',
                'RainbowDelimiterOrange',
                'RainbowDelimiterViolet',
                'RainbowDelimiterGreen',
                'RainbowDelimiterCyan',
            },
        }
    end
}
