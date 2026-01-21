return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        highlights = {
            -- Inactive tab
            background = {
                fg = "#787c99", -- Tokyo Night comment color
                bg = "#1a1b26", -- Theme background color (bg_dark)
            },
            -- Currently active tab
            buffer_selected = {
                fg = "#c0caf5", -- Foreground color (fg)
                bg = "#1f2335", -- Dark background (bg)
                bold = true,
                italic = false,
            },
            -- Empty area on the right side of the tab bar
            fill = {
                bg = "#1a1b26", -- Keep consistent with background.bg
            },
            -- Tab separator
            separator = {
                fg = "#1a1b26", -- Same as background, achieving seamless connection
                bg = "#1a1b26",
            },
            separator_selected = {
                fg = "#1a1b26",
                bg = "#1f2335",
            },
            separator_visible = {
                fg = "#1a1b26",
                bg = "#1a1b26",
            },
            -- Separator between tabs (when using slant and other styles)
            slant = {
                fg = "#1a1b26",
                bg = "#1a1b26",
            },
            -- Indicator on tab
            indicator_selected = {
                fg = "#ff9e64", -- Orange, used for selection indicator
                bg = "#1f2335",
            },
            -- Close button
            close_button = {
                fg = "#787c99",
                bg = "#1a1b26",
            },
            close_button_selected = {
                fg = "#f7768e", -- Red, close button selected state
                bg = "#1f2335",
            },
            -- Diagnostic information
            diagnostic = {
                fg = "#db4b4b", -- Error red
                bg = "#1a1b26",
            },
            diagnostic_selected = {
                fg = "#db4b4b",
                bg = "#1f2335",
                bold = true,
            },
            -- Modified state (unsaved buffer)
            modified = {
                fg = "#ff9e64", -- Orange
                bg = "#1a1b26",
            },
            modified_selected = {
                fg = "#ff9e64",
                bg = "#1f2335",
            },
            -- Tab number
            numbers = {
                fg = "#787c99",
                bg = "#1a1b26",
            },
            numbers_selected = {
                fg = "#c0caf5",
                bg = "#1f2335",
                bold = true,
            },
        },
        options = {
            themable = true,
            separator_style = "slant", -- slant, padded_slant, slope, padded_slope, thick, thin(default)
            diagnostics = "nvim_lsp",
            diagnostics_indicator = function(_, _, diagnostics_dict, _)
                local indicator = " "
                for level, number in pairs(diagnostics_dict) do
                    local symbol
                    if level == "error" then
                        symbol = " "
                    elseif level == "warning" then
                        symbol = " "
                    else
                        symbol = " "
                    end
                    indicator = indicator .. number .. symbol
                end
                return indicator
            end,
        },
    },
    keys = {
        {
            "fk",
            ":BufferLineCyclePrev<CR>",
            silent = true,
            desc = "Prev Buffer",
        },
        {
            "fj",
            ":BufferLineCycleNext<CR>",
            silent = true,
            desc = "Next Buffer",
        },
        { "fp", ":BufferLinePick<CR>", silent = true, desc = "Pick Buffer" },
        { "fd", ":bdelete<CR>", silent = true, desc = "Delete Buffer" },
        { "fn", ":tabnew<CR>", silent = true, desc = "New Tab" },
    },

    lazy = false,
}
