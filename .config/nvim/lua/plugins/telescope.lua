return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && "
                .. "cmake --build build --config Release && "
                .. "cmake --install build --prefix build",
        },
    },
    event = "VeryLazy",
    cmd = "Telescope",
    opts = {
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            },
        },
        defaults = {
            pickers = {
                find_files = {
                    find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
                },
            },
            file_ignore_patterns = {
                "node_modules",
                ".git/",
                "dist",
                "build",
                ".cache",
                ".vscode",
            },
            mappings = {
                i = {
                    ["<C-j>"] = "move_selection_next",
                    ["<C-k>"] = "move_selection_previous",

                    ["<C-n>"] = "cycle_history_next",
                    ["<C-p>"] = "cycle_history_prev",

                    ["<C-c>"] = "close",
                    ["<Esc>"] = "close",

                    ["<CR>"] = "select_default",
                    ["<C-s>"] = "select_horizontal",
                    ["<C-v>"] = "select_vertical",
                    ["<C-t>"] = "select_tab",

                    ["<C-u>"] = false,
                    ["<C-d>"] = false,
                },
                n = {
                    ["j"] = "move_selection_next",
                    ["k"] = "move_selection_previous",

                    ["q"] = "close",

                    ["<CR>"] = "select_default",
                    ["s"] = "select_horizontal",
                    ["v"] = "select_vertical",
                    ["t"] = "select_tab",
                },
            },
        },
    },
    config = function(_, opts) end,
    keys = {
        { "<leader>fa", ":Telescope<CR>" },
    },
}
