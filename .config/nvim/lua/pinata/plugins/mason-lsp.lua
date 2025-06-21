return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
        "saghen/blink.cmp",
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "hls", "bashls", "clangd", "texlab", "ts_ls"},
            automatic_enable = false,
        })

        local capabilities = require('blink.cmp').get_lsp_capabilities()
        local lspconfig = require("lspconfig")

        lspconfig.lua_ls.setup({ capabilities = capabilities, })
        lspconfig.hls.setup({ capabilities = capabilities })
        lspconfig.bashls.setup({ capabilities = capabilities })
        lspconfig.clangd.setup({ capabilities = capabilities })
        lspconfig.ts_ls.setup({ capabilities = capabilities })
        lspconfig.texlab.setup({
            capabilities = capabilities,
            filetypes = { "tex", "plaintex", "bib", "ltx" },
            settings = {
                texlab = {
                    auxDirectory = ".",
                    bibtexFormatter = "texlab",
                    build = {
                        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                        executable = "latexmk",
                        forwardSearchAfter = false,
                        onSave = false
                    },
                    chktex = {
                        onEdit = false,
                        onOpenAndSave = false
                    },
                    diagnosticsDelay = 300,
                    formatterLineLength = 80,
                    forwardSearch = {
                        args = {}
                    },
                    latexFormatter = "latexindent",
                    latexindent = {
                        modifyLineBreaks = false
                    }
                }
            }
        })

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
        vim.keymap.set({ 'n' }, 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set({ 'n' }, 'gr', vim.lsp.buf.references, {})
        vim.keymap.set({ 'n' }, '<leader>rn', vim.lsp.buf.rename, {})
    end
}
