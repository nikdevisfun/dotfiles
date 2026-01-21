return {
    "folke/which-key.nvim",
    lazy = false,
    opts = {
        win = {
            border = "rounded",
        },
        triggers = {
            { "<leader>", mode = { "n", "v" } },
            { "g", mode = "n" },
            { "z", mode = "n" },
        },
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
    end,
}
