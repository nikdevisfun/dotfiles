return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    config = function()
        require("lualine").setup({
            options = {
                theme = "tokyonight", -- Can use: onedark, dracula, nord, material, catppuccin, etc.
                component_separators = { left = "/", right = "/" },
                section_separators = { left = "", right = "" },
                globalstatus = true, -- Enable global status bar
            },
            sections = {
                lualine_a = {
                    {
                        "mode",
                        fmt = function(str)
                            return str:sub(1, 1) -- Only show the first letter of the mode
                        end,
                    },
                },
                lualine_b = {
                    "branch",
                    {
                        "diff",
                        symbols = {
                            added = " ",
                            modified = " ",
                            removed = " ",
                        },
                        colored = true,
                    },
                    {
                        "diagnostics",
                        sources = { "nvim_diagnostic" },
                        symbols = {
                            error = "✗ ",
                            warn = "⚠ ",
                            info = "ℹ ",
                            hint = "💡 ",
                        },
                        colored = true,
                        update_in_insert = false,
                    },
                },
                lualine_c = {
                    {
                        "filename",
                        path = 1, -- 0 = filename only, 1 = relative path, 2 = absolute path
                        symbols = {
                            modified = "●",
                            readonly = "[RO]",
                            unnamed = "[Untitled]",
                        },
                    },
                },
                lualine_x = {
                    {
                        "filetype",
                        colored = true,
                        icon_only = false,
                    },
                    "encoding",
                    "fileformat",
                },
                lualine_y = {
                    {
                        "progress",
                        fmt = function()
                            return "%P/%L" -- Display current line/total lines
                        end,
                    },
                },
                lualine_z = {
                    {
                        "location",
                        fmt = function()
                            return "%3l:%-2v" -- Line:column format
                        end,
                    },
                },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            extensions = { "fugitive", "nvim-tree", "toggleterm" },
        })
    end,
}
