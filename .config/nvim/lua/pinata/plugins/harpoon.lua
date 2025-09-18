return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "tpope/vim-fugitive", -- Toggle git blame when switching buffers with harpoon
    },
    opts = {
        settings = {
            save_on_toggle = true,
        },
    },
    keys = function()
        return  {
            {
                "<leader>ha",
                function()
                    require("harpoon"):list():add()
                end,
                desc = "Harpoon File",
                mode = "n",
            },
            {
                "<leader>hh",
                function()
                    local harpoon = require("harpoon")
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = "Harpoon Quick Menu",
                mode = "n",
            },
            {
                "<C-,>",
                function()
                    require("harpoon"):list():select(1)
                end,
                desc = "Harpoon Jump To 1",
                mode = { "n", "i", "v"},
            },
            {
                "<C-.>",
                function()
                    require("harpoon"):list():select(2)
                end,
                desc = "Harpoon Jump To 2",
                mode = { "n", "i", "v"},
            },
            {
                "<C-/>",
                function()
                    require("harpoon"):list():select(3)
                end,
                desc = "Harpoon Jump To 3",
                mode = { "n", "i", "v"},
            },
            {
                "<C-;>",
                function()
                    require("harpoon"):list():select(4)
                end,
                desc = "Harpoon Jump To 4",
                mode = { "n", "i", "v"},
            },
        }
    end,
}
