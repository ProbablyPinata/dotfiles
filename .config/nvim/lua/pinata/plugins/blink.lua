return {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = { 'rafamadriz/friendly-snippets' },

    -- use a release tag to download pre-built binaries
    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
        -- 'super-tab' for mappings similar to vscode (tab to accept)
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-n/C-p or Up/Down: Select next/previous item
        -- C-e: Hide menu
        -- C-k: Toggle signature help (if signature.enabled = true)
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = { preset = 'default' },

        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = 'mono'
        },

        cmdline = {
            keymap = { preset = 'inherit' },
            completion = { menu = { auto_show = true } },
        },

        -- cmdline = {
        --     enabled = true,
        --     -- use 'inherit' to inherit mappings from top level `keymap` config
        --     keymap = { preset = 'cmdline' },
        --     sources = function()
        --         local type = vim.fn.getcmdtype()
        --         -- Search forward and backward
        --         if type == '/' or type == '?' then return { 'buffer' } end
        --         -- Commands
        --         if type == ':' or type == '@' then return { 'cmdline' } end
        --         return {}
        --     end,
        --     completion = {
        --         trigger = {
        --             show_on_blocked_trigger_characters = {},
        --             show_on_x_blocked_trigger_characters = {},
        --         },
        --         list = {
        --             selection = {
        --                 -- When `true`, will automatically select the first item in the completion list
        --                 preselect = true,
        --                 -- When `true`, inserts the completion item automatically when selecting it
        --                 auto_insert = true,
        --             },
        --         },
        --         -- Whether to automatically show the window when new completion items are available
        --         menu = { auto_show = true },
        --         -- Displays a preview of the selected item on the current line
        --         ghost_text = { enabled = true }
        --     }
        -- },


        -- (Default) Only show the documentation popup when manually triggered
        completion = {
            menu = { border = 'solid' },
            documentation = {
                auto_show = true,
                window = { border = 'solid' } },
            },
            signature = { window = { border = 'solid' } },

            -- Default list of enabled providers defined so that you can extend it
            -- elsewhere in your config, without redefining it, due to `opts_extend`
            sources = {
                providers = {
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                        -- make lazydev completions top priority (see `:h blink.cmp`)
                        score_offset = 100,
                    },
                },
                default = { 'lsp', 'path', 'snippets', 'buffer', 'cmdline', 'lazydev' },
            },

            -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
            -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
            -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
            --
            -- See the fuzzy documentation for more information
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    }
