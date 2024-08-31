return {
    "lewis6991/gitsigns.nvim",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "BufEnter",
    config = function()
        require('gitsigns').setup()
    end
}

