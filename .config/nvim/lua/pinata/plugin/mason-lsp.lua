return {
    "neovim/nvim-lspconfig",
    -- event = "BufReadPost",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp"
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "hls", "bashls", "clangd", "texlab" }
        })

        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
            capabilities = capabilities
        })
        lspconfig.hls.setup({
            capabilities = capabilities
        })
        lspconfig.bashls.setup({
            capabilities = capabilities
        })
        lspconfig.clangd.setup({
            capabilities = capabilities
        })
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
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        vim.keymap.set({ 'n', 'v' }, '<leader>gd', vim.lsp.buf.definition, {})
        vim.keymap.set({ 'n', 'v' }, '<leader>gr', vim.lsp.buf.references, {})
    end
}
