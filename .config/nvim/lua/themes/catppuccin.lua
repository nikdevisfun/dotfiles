-- Catppuccin theme configuration
-- Supports multiple styles: latte, frappe, macchiato, mocha

return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
        flavour = "frappe",
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            telescope = true,
        },
    },
}
