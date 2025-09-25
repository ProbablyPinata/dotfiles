return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        local palettes = {
            carbonfox = {
                bg1 = "#000000", -- Pure background
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
                    Pmenu = { bg = "#000000", fg = "#fc5507" }, -- match background
                    PmenuSel = { bg = "#fc5507", fg = "#f2f4f8" },
                    PmenuThumb = { bg = "#f2f4f8", fg = "#f2f4f8" },
                    CursorLineNr = { fg = "#fc5507" },
                    WinSeparator = { fg = "#282828" },
                },
            }
        })

        vim.cmd("colorscheme carbonfox")
        vim.opt.cursorline = true
        vim.opt.cursorlineopt = "number"
        vim.opt.colorcolumn = "80"
    end
}
