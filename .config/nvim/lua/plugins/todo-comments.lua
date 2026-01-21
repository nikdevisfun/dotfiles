return {
    "folke/todo-comments.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = true, -- Show icons on the left
        sign_priority = 8,

        keywords = {
            FIX = {
                icon = " ",
                color = "error",
                alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
            },
            TODO = {
                icon = " ",
                color = "info",
            },
            HACK = {
                icon = " ",
                color = "warning",
            },
            WARN = {
                icon = " ",
                color = "warning",
                alt = { "WARNING", "XXX" },
            },
            PERF = {
                icon = "󰅒 ",
                color = "default",
                alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
            },
            NOTE = {
                icon = "󰍨 ",
                color = "hint",
                alt = { "INFO" },
            },
            TEST = {
                icon = "󰙨 ",
                color = "test",
                alt = { "TESTING", "PASSED", "FAILED" },
            },
        },

        highlight = {
            multiline = true,
            multiline_pattern = "^.",
            multiline_context = 10,

            before = "",
            keyword = "wide",
            after = "fg",

            pattern = [[.*<(KEYWORDS)\s*:]],
            comments_only = true,
            max_line_len = 400,
            exclude = {},
        },

        colors = {
            error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
            warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
            info = { "DiagnosticInfo", "#2563EB" },
            hint = { "DiagnosticHint", "#10B981" },
            default = { "Identifier", "#7C3AED" },
            test = { "Identifier", "#FF00FF" },
        },

        search = {
            command = "rg",
            args = {
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
            },
            pattern = [[\b(KEYWORDS):]],
        },
    },

    keys = {
        {
            "]t",
            function()
                require("todo-comments").jump_next()
            end,
            desc = "Next Todo Comment",
        },
        {
            "[t",
            function()
                require("todo-comments").jump_prev()
            end,
            desc = "Prev Todo Comment",
        },

        { "<leader>st", "<cmd>TodoTelescope<CR>", desc = "Search Todos (Telescope)" },
        { "<leader>sT", "<cmd>TodoTrouble<CR>", desc = "Todos in Trouble" },
        { "<leader>xt", "<cmd>TodoQuickFix<CR>", desc = "Todos Quickfix" },
        { "<leader>ft", "<cmd>TodoFzfLua<CR>", desc = "Todos (FzfLua)" },
    },
}
