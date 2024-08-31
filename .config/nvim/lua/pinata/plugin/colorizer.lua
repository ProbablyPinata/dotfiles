return {
    'norcalli/nvim-colorizer.lua',
    keys = {
        { "<leader>w", "<cmd>ColorizerToggle<cr>"}
    },

    config = function()
        require 'colorizer'.setup()
    end
}
