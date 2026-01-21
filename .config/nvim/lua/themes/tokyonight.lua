-- Tokyonight theme configuration
-- Modern Tokyo-style theme supporting multiple variants: "storm", "moon", "night", "day"

return {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    lazy = false,
    opts = {
        style = "moon",
    },
    config = function()
        -- vim.cmd.colorscheme("tokyonight")
    end,
}
