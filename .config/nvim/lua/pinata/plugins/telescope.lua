return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "sharkdp/fd",
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },

    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local transform_mod = require("telescope.actions.mt").transform_mod

        local trouble = require("trouble")
        local trouble_telescope = require("trouble.sources.telescope")

        -- or create your custom action
        local custom_actions = transform_mod({
            open_trouble_qflist = function(prompt_bufnr)
                trouble.toggle("quickfix")
            end,
        })

        telescope.setup({
            defaults = require('telescope.themes').get_ivy {},
            extensions = {
                fzf = {}
            },
        })

        telescope.load_extension("fzf")

        -- set keymaps
        local km = vim.keymap -- for conciseness
        local builtin = require('telescope.builtin')

        -- Find
        km.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        km.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        km.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        km.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        km.set('n', '<leader>ft', "<cmd>TodoTelescope<cr>", { desc = 'Telescope find TODOs' })
        km.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope grep string' })

        km.set("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find case_mode=ignore_case<cr>", { desc = "Fuzzy find in current file" })
        km.set("n", "<leader>f/", "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<cr>", { desc = "Telescope current buffer find" })


        -- Git
        km.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })
        km.set('n', '<leader>gr', builtin.git_branches, { desc = 'Telescope git branches' })
        km.set('n', '<leader>fe', builtin.treesitter, { desc = 'Telescope treesitter' })
    end
}
