-- Install plugin (using lazy.nvim as example)
return {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons", -- Optional icon support
    opts = {
        position = "bottom", -- "bottom" or "top"
        height = 10, -- Popup window height
        width = 50, -- Popup window width
        icons = true, -- Show icons
        mode = "workspace_diagnostics", -- Initial mode: workspace_diagnostics | document_diagnostics | quickfix | lsp_references | loclist
        fold_open = "", -- Expand fold icon
        fold_closed = "", -- Fold icon
        group = true, -- Group errors of the same type
        padding = true, -- Left and right padding
        action_keys = {
            -- Action keybindings
            close = "q", -- Close window
            cancel = "<esc>", -- Cancel selection
            refresh = "r", -- Refresh
            jump = { "<cr>", "<tab>" }, -- Jump to location
            open_split = { "<c-x>" }, -- Open in horizontal split
            open_vsplit = { "<c-v>" }, -- Open in vertical split
            open_tab = { "<c-t>" }, -- Open in new tab
            toggle_mode = "m", -- Toggle mode
            toggle_preview = "P", -- Preview folded content
            hover = "K", -- Hover to show information
            preview = "p", -- Preview
            close_folds = { "zM", "zm" }, -- Close all folds
            open_folds = { "zR", "zr" }, -- Open all folds
            toggle_fold = { "zA", "za" }, -- Toggle fold
            previous = "k", -- Previous item
            next = "j", -- Next item
        },
        signs = {
            -- Custom signs
            error = "",
            warning = "",
            hint = "",
            information = "",
            other = "",
        },
        use_diagnostic_signs = true, -- Enable LSP signs
    },
    keys = {
        { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
        {
            "<leader>xw",
            "<cmd>TroubleToggle workspace_diagnostics<cr>",
            desc = "Workspace Diagnostics",
        },
        {
            "<leader>xd",
            "<cmd>TroubleToggle document_diagnostics<cr>",
            desc = "Document Diagnostics",
        },
        { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Loclist" },
        { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix" },
        { "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "LSP References" },
    },
}
