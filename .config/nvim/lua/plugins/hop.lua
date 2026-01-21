return {
    "hadronized/hop.nvim",
    branch = "v2",
    event = "VeryLazy",
    config = function()
        require("hop").setup({})
        vim.keymap.set("n", "<leader>;", function()
            require("hop").hint_words()
        end, { desc = "Hop to word" })
    end,
}
