return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
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
                "<C-j>",
                function()
                    require("harpoon"):list():select(1)
                end,
                desc = "Harpoon Jump To 1",
                mode = "n",
            },
            {
                "<C-k>",
                function()
                    require("harpoon"):list():select(2)
                end,
                desc = "Harpoon Jump To 2",
                mode = "n",
            },
            {
                "<C-l>",
                function()
                    require("harpoon"):list():select(3)
                end,
                desc = "Harpoon Jump To 3",
                mode = "n",
            },
            {
                "<C-h>",
                function()
                    require("harpoon"):list():select(4)
                end,
                desc = "Harpoon Jump To 4",
                mode = "n",
            },
        }
    end,
}
