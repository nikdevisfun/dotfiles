return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
        labels = "asdfghjklqwertyuiopzxcvbnm",
        jump = {
            autojump = true,
        },
        modes = {
            search = {
                enabled = true,
            },
            char = {
                enabled = true,
                autohide = true,
                jump_labels = true,
                multi_line = true,
            },
        },
        highlight = {
            backdrop = true,
        },
    },
    keys = {
        -- Normal jump
        {
            ";",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump()
            end,
            desc = "Flash Jump",
        },

        -- Treesitter structure jump
        {
            "S",
            mode = { "n", "x", "o" },
            function()
                require("flash").treesitter()
            end,
            desc = "Flash Treesitter",
        },

        -- Remote operations (y/d/c)
        -- {
        -- 	"r",
        -- 	mode = "o",
        -- 	function()
        -- 		require("flash").remote()
        -- 	end,
        -- 	desc = "Flash Remote",
        -- },

        -- Search enhancement
        -- {
        -- 	"R",
        -- 	mode = { "n", "o", "x" },
        -- 	function()
        -- 		require("flash").treesitter_search()
        -- 	end,
        -- 	desc = "Flash Treesitter Search",
        -- },

        -- Replace f
        {
            "f",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump({
                    search = { mode = "char", forward = true },
                })
            end,
            desc = "Flash Forward Char",
        },

        -- Replace F
        {
            "F",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump({
                    search = { mode = "char", forward = false },
                })
            end,
            desc = "Flash Backward Char",
        },

        -- Replace t
        {
            "t",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump({
                    search = { mode = "char", forward = true, offset = -1 },
                })
            end,
            desc = "Flash Until Forward",
        },

        -- Replace T
        {
            "T",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump({
                    search = { mode = "char", forward = false, offset = 1 },
                })
            end,
            desc = "Flash Until Backward",
        },
    },
}
