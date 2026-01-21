return {
    "MagicDuck/grug-far.nvim",
    cmd = "GrugFar",
    opts = {},
    config = function()
        local grug = require("grug-far")

        -- grug.setup({
        -- 	keymaps = {
        -- 		replace = "<CR>", -- Single replace
        -- 		replace_all = "<C-CR>", -- Replace all
        -- 		qflist = "<leader>q", -- Open quickfix
        -- 	},
        -- })

        -- ======================
        -- Global keybindings
        -- ======================

        -- Open grug-far
        -- vim.keymap.set("n", "<leader>fr", function()
        -- 	grug.open()
        -- end, { desc = "GrugFar: find & replace" })

        -- Search word under cursor
        -- vim.keymap.set("n", "<leader>fw", function()
        -- 	grug.open({
        -- 		prefills = {
        -- 			search = vim.fn.expand("<cword>"),
        -- 		},
        -- 	})
        -- end, { desc = "GrugFar: search word under cursor" })

        -- Visual mode search
        -- vim.keymap.set("v", "<leader>fv", function()
        -- 	grug.open({
        -- 		prefills = {
        -- 			search = vim.fn.getreg("v"),
        -- 		},
        -- 	})
        -- end, { desc = "GrugFar: search selection" })
    end,
}
