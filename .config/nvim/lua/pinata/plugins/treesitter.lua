return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "BufEnter",

        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "html", "haskell", "bash", "kotlin", "cpp", "toml", "markdown", "markdown_inline", "scala", "java"},
                ignore_install= { },
                auto_install = false,
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = false }, -- buggy, and seems to conflic with nvim-autopairs
                additional_vim_regex_highlighting = false,
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        lazy = true,
        event = "BufEnter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },

        config = function()
            require('treesitter-context').setup{
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 20, -- Maximum number of lines to show for a single context
                trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
                -- Separator between context and content. Should be a single character string, like '-'.
                -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = nil,
                zindex = 20, -- The Z-index of the context window
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            }
        end
    }
    -- TODO: treesitter-textobjects
}
