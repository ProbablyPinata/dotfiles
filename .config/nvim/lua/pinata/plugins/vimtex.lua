return {
    "lervag/vimtex",
    lazy = false, -- don't lazy-load, will break VimtexInverseSearch
    ft = { "tex", "ltx", "aux", "log", "out", "toc", },

    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = "sioyek"
        vim.g.vimtex_syntax_conceal_disable = 1
    end
}
