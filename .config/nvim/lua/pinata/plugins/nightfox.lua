return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        local palettes = {
            carbonfox = {
                bg1 = "#000000", -- Black background
            }
        }
        require('nightfox').setup({
            options = {
                styles = {               -- Style to be applied to different syntax groups
                    comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
                    conditionals = "NONE",
                    constants = "bold",
                    functions = "NONE",
                    keywords = "NONE",
                    numbers = "NONE",
                    operators = "NONE",
                    preprocs = "bold",
                    strings = "NONE",
                    types = "italic",
                    variables = "NONE",
                },
            },
            palettes = palettes,
            groups = {
                carbonfox = {
                    Pmenu = { bg = "#282828", fg = "#f2f4f8" },
                    PmenuSel = { bg = "#fc5507", fg = "#f2f4f8" },
                    CursorLineNr = { fg = "#fc5507" },
                    WinSeparator = { fg = "#282828" },
                    -- Conceal = { fg = "#78a9ff" } -- figure out how to link this to blue
                },
            }
        })

        vim.cmd("colorscheme carbonfox")
        vim.opt.cursorline = true
        vim.opt.cursorlineopt = "number"
        vim.opt.colorcolumn = "80"
    end
}
