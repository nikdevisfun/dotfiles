-- Kanagawa theme configuration
-- Theme inspired by Japanese ukiyo-e, supporting multiple variants: "wave", "lotus", "dragon"

return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    lazy = false,
    opts = {},
    config = function(_, opts)
        require("kanagawa").setup(opts)
        vim.cmd("colorscheme kanagawa")
    end,
}
