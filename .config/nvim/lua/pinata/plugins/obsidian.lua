return {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    event = {
        -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        -- refer to `:h file-pattern` for more examples
        "BufReadPre " .. vim.fn.expand "~" .. "/vaults/*/*.md",
        "BufNewFile " .. vim.fn.expand "~" .. "/vaults/*/*.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim", -- required
        "hrsh7th/nvim-cmp",
        "nvim-treesitter"
    },
    opts = {
        completion = {
          nvim_cmp = false,
        },
        workspaces = {
            {
                name = "personal",
                path = "~/vaults/personal",
            },
            {
                name = "imperial",
                path = "~/vaults/imperial",
            },
        },
        ui = { 
            enable = false, 
            checkboxes = {
                -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined.
                [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
                ["x"] = { char = "", hl_group = "ObsidianDone" },
            },
        },
    },

}
