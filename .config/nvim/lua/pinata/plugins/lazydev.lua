return {
    {
        "folke/lazydev.nvim",
        dependencies = {
            "saghen/blink.cmp",
        },
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "luvit-meta/library", words = { "vim%.uv" } },
            },
        },
    },
}
