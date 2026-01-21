return {
    "lewis6991/gitsigns.nvim",
    config = function()
        -- Nabigation
        vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>", { silent = true, desc = "Next hunk" })
        vim.keymap.set(
            "n",
            "[h",
            ":Gitsigns prev_hunk<CR>",
            { silent = true, desc = "Previous hunk" }
        )

        -- Preview / Info
        vim.keymap.set(
            "n",
            "gs",
            ":Gitsigns preview_hunk_inline<CR>",
            { silent = true, desc = "Preview hunk in line" }
        )

        -- Actions
        vim.keymap.set(
            "n",
            "gr",
            ":Gitsigns reset_hunk<CR>",
            { silent = true, desc = "Reset hunk" }
        )
        vim.keymap.set(
            "n",
            "gR",
            ":Gitsigns reset_buffer<CR>",
            { silent = true, desc = "Reset buffer" }
        )
        vim.keymap.set(
            "n",
            "ga",
            ":Gitsigns stage_hunk<CR>",
            { silent = true, desc = "Stage Hunk" }
        )
        vim.keymap.set(
            "n",
            "gA",
            ":Gitsigns stage_buffer<CR>",
            { silent = true, desc = "Stage buffer" }
        )
        vim.keymap.set(
            "n",
            "gu",
            ":Gitsigns undo_stage_hunk<CR>",
            { silent = true, desc = "Undo stage hunk" }
        )
    end,
}
