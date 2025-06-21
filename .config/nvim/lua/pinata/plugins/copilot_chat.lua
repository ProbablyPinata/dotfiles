return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    keys = {
        { "<leader>q", "<cmd>CopilotChat<cr>", mode = { "n" }}
    },
    opts = {},
  },
}
