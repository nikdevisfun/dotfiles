return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            preset = {
                header = [[
███╗   ██╗██╗██╗  ██╗██████╗ ███████╗██╗   ██╗
████╗  ██║██║██║ ██╔╝██╔══██╗██╔════╝██║   ██║
██╔██╗ ██║██║█████╔╝ ██║  ██║█████╗  ██║   ██║
██║╚██╗██║██║██╔═██╗ ██║  ██║██╔══╝  ╚██╗ ██╔╝
██║ ╚████║██║██║  ██╗██████╔╝███████╗ ╚████╔╝ 
╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝  ╚═══╝  
                ]],
            },
        },
        explorer = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        notifier = {
            enabled = false,
            timeout = 10000,
        },
        picker = { enabled = true },
        quickfile = { enabled = true },
        scroll = { enabled = true },
        styles = {
            notification = {
                wo = { wrap = true }, -- Wrap notifications
            },
        },
    },
    keys = {
        -- Top Pickers & Explorer
        {
            "<leader><space>",
            function()
                Snacks.picker.smart()
            end,
            desc = "Smart Find Files",
        },
        {
            "<leader>,",
            function()
                Snacks.picker.buffers()
            end,
            desc = "Buffers",
        },
        {
            "<leader>/",
            function()
                Snacks.picker.grep()
            end,
            desc = "Grep",
        },
        {
            "<leader>:",
            function()
                Snacks.picker.command_history()
            end,
            desc = "Command History",
        },
        {
            "<leader>e",
            function()
                Snacks.explorer()
            end,
            desc = "File Explorer",
        },

        -- find

        {
            "<leader>fu",
            function()
                Snacks.picker.git_status()
            end,
            desc = "Find Git Status",
        },
        {
            "<leader>fc",
            function()
                Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
            end,
            desc = "Find Config File",
        },
        {
            "<leader>fg",
            function()
                Snacks.picker.git_files()
            end,
            desc = "Find Git Files",
        },
        {
            "<leader>fp",
            function()
                Snacks.picker.projects()
            end,
            desc = "Projects",
        },
        {
            "<leader>fr",
            function()
                Snacks.picker.recent()
            end,
            desc = "Recent",
        },

        -- Grep
        {
            "<leader>sb",
            function()
                Snacks.picker.lines()
            end,
            desc = "Buffer Lines",
        },
        {
            "<leader>sB",
            function()
                Snacks.picker.grep_buffers()
            end,
            desc = "Grep Open Buffers",
        },
        {
            "<leader>sw",
            function()
                Snacks.picker.grep_word()
            end,
            desc = "Visual selection or word",
            mode = { "n", "x" },
        },

        -- search
        {
            '<leader>s"',
            function()
                -- TODO what is this?
                Snacks.picker.registers()
            end,
            desc = "Registers",
        },
        {
            "<leader>s/",
            function()
                Snacks.picker.search_history()
            end,
            desc = "Search History",
        },
        {
            "<leader>sa",
            function()
                -- TODO what is this for?
                Snacks.picker.autocmds()
            end,
            desc = "Autocmds",
        },
        {
            "<leader>sc",
            function()
                Snacks.picker.commands()
            end,
            desc = "Commands",
        },
        {
            "<leader>sd",
            function()
                Snacks.picker.diagnostics()
            end,
            desc = "Diagnostics",
        },
        {
            "<leader>sD",
            function()
                Snacks.picker.diagnostics_buffer()
            end,
            desc = "Buffer Diagnostics",
        },
        {
            "<leader>sh",
            function()
                Snacks.picker.help()
            end,
            desc = "Help Pages",
        },
        {
            "<leader>sH",
            function()
                Snacks.picker.highlights()
            end,
            desc = "Highlights",
        },
        -- TODO fix picker.icons
        -- {
        -- 	"<leader>si",
        -- 	function()
        -- 		Snacks.picker.icons()
        -- 	end,
        -- 	desc = "Icons",
        -- },
        {
            "<leader>sk",
            function()
                Snacks.picker.keymaps()
            end,
            desc = "Keymaps",
        },
        {
            "<leader>sl",
            function()
                -- TODO didn't get it
                Snacks.picker.loclist()
            end,
            desc = "Location List",
        },
        {
            "<leader>sm",
            function()
                Snacks.picker.marks()
            end,
            desc = "Marks",
        },
        {
            "<leader>sM",
            function()
                Snacks.picker.man()
            end,
            desc = "Man Pages",
        },
        {
            "<leader>su",
            function()
                Snacks.picker.undo()
            end,
            desc = "Undo History",
        },
        {
            "<leader>uC",
            function()
                Snacks.picker.colorschemes()
            end,
            desc = "Colorschemes",
        },

        -- Other
        {
            "<leader>z",
            function()
                Snacks.zen()
            end,
            desc = "Toggle Zen Mode",
        },
        {
            "<leader>Z",
            function()
                Snacks.zen.zoom()
            end,
            desc = "Toggle Zoom",
        },
        {
            "<leader>.",
            function()
                Snacks.scratch()
            end,
            desc = "Toggle Scratch Buffer",
        },
        {
            "<leader>n",
            function()
                Snacks.notifier.show_history()
            end,
            desc = "Notification History",
        },
        {
            "<leader>cR",
            function()
                Snacks.rename.rename_file()
            end,
            desc = "Rename File",
        },
        {
            "<leader>gB",
            function()
                Snacks.gitbrowse()
            end,
            desc = "Git Browse",
            mode = { "n", "v" },
        },
        {
            "<leader>gg",
            function()
                Snacks.lazygit()
            end,
            desc = "Lazygit",
        },
        {
            "<leader>un",
            function()
                Snacks.notifier.hide()
            end,
            desc = "Dismiss All Notifications",
        },
        {
            "<c-/>",
            function()
                Snacks.terminal()
            end,
            desc = "Toggle Terminal",
        },
        {
            "<c-_>",
            function()
                Snacks.terminal()
            end,
            desc = "which_key_ignore",
        },
        {
            "]]",
            function()
                Snacks.words.jump(vim.v.count1)
            end,
            desc = "Next Reference",
            mode = { "n", "t" },
        },
        {
            "[[",
            function()
                Snacks.words.jump(-vim.v.count1)
            end,
            desc = "Prev Reference",
            mode = { "n", "t" },
        },
        {
            "<leader>N",
            desc = "Neovim News",
            function()
                Snacks.win({
                    file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
                    width = 0.6,
                    height = 0.6,
                    wo = {
                        spell = false,
                        wrap = false,
                        signcolumn = "yes",
                        statuscolumn = " ",
                        conceallevel = 3,
                    },
                })
            end,
        },
    },
}
