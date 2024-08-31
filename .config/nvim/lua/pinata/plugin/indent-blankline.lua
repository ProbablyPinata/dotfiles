return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufEnter",
    opts = {},

    config = function()
        require("ibl").setup()
    end
}
