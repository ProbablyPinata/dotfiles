return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufReadPost",
    opts = {},

    config = function()
        require("ibl").setup()
    end
}
