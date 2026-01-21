return {
    "williamboman/mason.nvim",

    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig",
    },
    -- event = { "BufReadPre", "BufNewFile" },
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    },
    config = function(_, opts)
        require("mason").setup(opts)
        local mason_lspconfig = require("mason-lspconfig")
        local vue_language_server = vim.fn.stdpath("data")
            .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

        -- Auto install
        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "pyright",
                "html",
                "cssls",
                "tailwindcss",
                "jsonls",
                "ts_ls",
                "emmet_ls",
                "vue_ls",
                "eslint",
            },
        })

        local servers = {
            lua_ls = {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                        workspace = {
                            checkThirdParty = false,
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                    },
                },
            },
            pyright = {},
            html = {},
            cssls = {},
            tailwindcss = {},
            jsonls = {},
            ts_ls = {
                filetypes = {
                    "typescript",
                    "javascript",
                    "javascriptreact",
                    "typescriptreact",
                    "vue",
                },
                init_options = {
                    plugins = {
                        {
                            name = "@vue/typescript-plugin",
                            location = vue_language_server,
                            languages = { "vue" },
                        },
                    },
                },
            },
            emmet_ls = {},
            vue_ls = { filetypes = { "vue" } },
            eslint = {},
        }

        for server, config in pairs(servers) do
            config.capabilities = require("blink.cmp").get_lsp_capabilities()
            config.on_attach = function(client)
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
            end
            vim.lsp.config(server, config)
        end

        vim.cmd("LspStart")

        vim.diagnostic.config({
            virtual_text = true,
            update_in_insert = true,
        })
    end,
}
