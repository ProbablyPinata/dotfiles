return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        local palettes = {
            carbonfox = {
                -- bg3 = "#535353", -- cursorline
                sel0 = "#353535", -- Popup bg, visual selection bg
            }
        }
        require('nightfox').setup({
            options = {
                styles = {               -- Style to be applied to different syntax groups
                    comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
                    conditionals = "NONE",
                    constants = "underline",
                    functions = "NONE",
                    keywords = "NONE",
                    numbers = "NONE",
                    operators = "NONE",
                    strings = "NONE",
                    types = "italic",
                    variables = "NONE",
                },
            },
            palettes = palettes,
            groups = {
                carbonfox = {
                    Pmenu = { bg = "#161616", fg = "#f2f4f8" },
                    PmenuSel = { bg = "#fc5507", fg = "#f2f4f8" },
                    CursorLineNr = { bg = "#161616", fg = "#fc5507" },
                    -- Conceal = { fg = "#78a9ff" } -- figure out how to link this to blue
                },
            }
        })

        vim.cmd("colorscheme carbonfox")
        vim.opt.cursorline = true
        vim.opt.cursorlineopt = "both"
        vim.opt.colorcolumn = "80"
    end
}
