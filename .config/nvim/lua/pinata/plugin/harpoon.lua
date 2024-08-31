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
                "<leader>H",
                function()
                    require("harpoon"):list():add()
                end,
                desc = "Harpoon File",
            },
            {
                "<leader>h",
                function()
                    local harpoon = require("harpoon")
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = "Harpoon Quick Menu",
            },
            {
                "<C-j>",
                function()
                    require("harpoon"):list():select(1)
                end,
                desc = "Harpoon Jump To 1"
            },
            {
                "<C-k>",
                function()
                    require("harpoon"):list():select(2)
                end,
                desc = "Harpoon Jump To 2"
            },
            {
                "<C-l>",
                function()
                    require("harpoon"):list():select(3)
                end,
                desc = "Harpoon Jump To 3"
            },
            {
                "<C-;>",
                function()
                    require("harpoon"):list():select(4)
                end,
                desc = "Harpoon Jump To 4"
            },
        }
    end,
}
