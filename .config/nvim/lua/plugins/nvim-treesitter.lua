return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" }, -- Load after file opens, not VeryLazy
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "lua",
            "markdown",
            "vue",
            "html",
            "typescript",
            "javascript",
            "tsx",
            "css",
            "scss",
            "json",
            "jsonc",
        },
        highlight = {
            enable = true,
            disable = function(lang, buf)
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end,
        },
        indent = { enable = true, disable = { "python" } },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<CR>",
                node_incremental = "<CR>",
                scope_incremental = "<TAB>",
                node_decremental = "<S-TAB>",
            },
        },
        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    ["ic"] = "@class.inner",
                    ["ap"] = "@parameter.outer",
                    ["ip"] = "@parameter.inner",
                    ["at"] = "@tag.outer",
                    ["it"] = "@tag.inner",
                },
            },
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },
        },
    },
    enable = true,
}
