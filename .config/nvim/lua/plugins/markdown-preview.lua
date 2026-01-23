-- lazy.nvim configuration example
return {
    {
        "iamcco/markdown-preview.nvim",
        ft = "markdown", -- Only load for markdown files
        build = "cd app && yarn install", -- Install dependencies
        config = function()
            -- Browser preview settings
            vim.g.mkdp_auto_start = 0 -- Don't auto start
            vim.g.mkdp_auto_close = 1 -- Auto close browser when markdown buffer closes
            vim.g.mkdp_refresh_slow = 0 -- Slow refresh
            vim.g.mkdp_command_for_global = 0
            vim.g.mkdp_open_to_the_world = 0 -- Only accessible locally
            vim.g.mkdp_browser = "" -- Use system default browser
            vim.g.mkdp_echo_preview_url = 1 -- Show URL at bottom when opening
            vim.g.mkdp_page_title = "Markdown Preview"
            vim.g.mkdp_preview_options = {
                disable_sync_scroll = 0, -- Sync scroll
                sync_scroll_type = "middle", -- middle, top, relative
                hide_yaml_meta = 1,
            }

            -- Custom keybindings
            vim.api.nvim_create_user_command("MarkdownPreviewToggle", function()
                vim.cmd("MarkdownPreviewToggle")
            end, {})

            vim.keymap.set(
                "n",
                "<C-p>",
                "<cmd>MarkdownPreviewToggle<CR>",
                { desc = "Toggle Markdown Preview" }
            )
        end,
    },
}
