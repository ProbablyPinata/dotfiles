return {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter"
    },
    main = "ibl",
    event = "BufEnter",
    config = function()
        require("ibl").setup()
    end
}
