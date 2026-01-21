return {
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    opts = {
        completion = {
            documentation = {
                auto_show = true,
            },
        },
        keymap = {
            preset = "super-tab",
            -- ["<CR>"] = { "accept", "fallback" },
            -- ["<C-n>"] = { "select_next", "fallback" },
            -- ["<C-p>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-k>"] = { "select_prev", "fallback" },
            -- ["<Tab>"] = { "select_next", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },
            ["<C-e>"] = { "hide", "fallback" },
            ["<C-Space>"] = { "show", "fallback" },
        },
        sources = {
            default = { "path", "snippets", "buffer", "lsp" },
        },
        cmdline = {
            sources = function()
                local cmd_type = vim.fn.getcmdtype()
                if cmd_type == "/" then
                    return { "buffer" }
                end
                if cmd_type == ":" then
                    return { "cmdline" }
                end
                return {}
            end,
            keymap = {
                preset = "none",
                ["<CR>"] = { "accept", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
            },
            completion = {
                menu = {
                    auto_show = true,
                },
            },
        },
    },
}
