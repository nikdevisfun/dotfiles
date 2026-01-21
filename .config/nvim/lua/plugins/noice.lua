return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    opts = {
        -- ==============================
        -- UI Style
        -- ==============================
        cmdline = {
            enabled = true,
            view = "cmdline_popup",
            format = {
                cmdline = { pattern = "^:", icon = "󰘳 ", lang = "vim" },
                search_down = { kind = "search", pattern = "^/", icon = "  ", lang = "regex" },
                search_up = { kind = "search", pattern = "^%?", icon = "  ", lang = "regex" },
                filter = { pattern = "^:%s*!", icon = " ", lang = "bash" },
                lua = { pattern = "^:%s*lua%s+", icon = " ", lang = "lua" },
            },
        },

        messages = {
            enabled = true,
            view = "mini",
            view_error = "notify",
            view_warn = "notify",
            view_history = "messages",
            view_search = "virtualtext",
        },

        popupmenu = {
            enabled = true,
            backend = "nui",
        },

        -- ==============================
        -- LSP Beautification
        -- ==============================
        lsp = {
            progress = {
                enabled = true,
            },
            hover = {
                enabled = true,
                silent = true,
            },
            signature = {
                enabled = true,
            },
            message = {
                enabled = true,
                view = "notify",
            },
        },

        -- ==============================
        -- Presets
        -- ==============================
        presets = {
            bottom_search = false,
            command_palette = true,
            long_message_to_split = true,
            inc_rename = true,
            lsp_doc_border = true,
        },

        -- ==============================
        -- Filter meaningless information
        -- ==============================
        routes = {
            {
                filter = {
                    event = "msg_show",
                    kind = "",
                    find = "written",
                },
                opts = { skip = true },
            },
            {
                filter = {
                    event = "msg_show",
                    find = "search hit BOTTOM",
                },
                opts = { skip = true },
            },
            {
                filter = {
                    event = "msg_show",
                    find = "search hit TOP",
                },
                opts = { skip = true },
            },
            {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            },
        },

        -- ==============================
        -- Views
        -- ==============================
        views = {
            cmdline_popup = {
                position = {
                    row = "40%",
                    col = "50%",
                },
                size = {
                    width = 60,
                    height = "auto",
                },
                border = {
                    style = "rounded",
                },
            },
            popupmenu = {
                relative = "editor",
                position = {
                    row = "45%",
                    col = "50%",
                },
                size = {
                    width = 60,
                    height = 10,
                },
                border = {
                    style = "rounded",
                },
            },
        },
    },

    keys = {
        {
            "<leader>sl",
            function()
                require("noice").cmd("last")
            end,
            desc = "Noice Last Message",
        },
    },
}
