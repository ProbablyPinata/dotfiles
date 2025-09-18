return {
    "lervag/vimtex",
    lazy = false, -- don't lazy-load, will break VimtexInverseSearch
    ft = { "tex", "ltx", "aux", "log", "out", "toc", },

    init = function()
        vim.g.vimtex_view_method = "sioyek"
        vim.g.vimtex_view_sioyek_exe = "/Applications/sioyek.app/Contents/MacOS/sioyek"
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = 'aux',
            out_dir = '',
            callback = 1,
            continuous = 1,
            executable = 'latexmk',
            hooks = {},
            options = {
                '-shell-escape',
                '-verbose',
                '-file-line-error',
                '-synctex=1',
                '-interaction=nonstopmode',
            },
        }
        vim.g.vimtex_syntax_conceal_disable = 1
    end
}
