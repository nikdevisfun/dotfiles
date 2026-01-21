return {
    "nvimdev/lspsaga.nvim",
    cmd = "Lspsaga",
    opts = {
        finder = {
            keys = {
                toggle_or_open = "<CR>",
            },
        },
    },
    confit = function() end,
    keys = {
        { "<leader>lr", ":Lspsaga rename<CR>", desc = "Rename" },
        { "<leader>lc", ":Lspsaga code_action<CR>", desc = "Code Action" },
        { "<leader>ld", ":Lspsaga goto_definition<CR>", desc = "Go to Definition" },
        { "<leader>lh", ":Lspsaga hover_doc<CR>", desc = "Hover Doc" },
        { "<leader>lR", ":Lspsaga finder<CR>", desc = "Finder" },
        { "<leader>ln", ":Lspsaga diagnostic_jump_next<CR>", desc = "Diagnostic Jump Next" },
        { "<leader>lp", ":Lspsaga diagnostic_jump_prev<CR>", desc = "Diagnostic Jump Prev" },
    },
}
