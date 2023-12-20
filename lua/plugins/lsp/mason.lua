return { 
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        'neovim/nvim-lspconfig',
    },
    config = function()
        local lspconfig = require("lspconfig")
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        mason_lspconfig.setup({
            ensure_installed = {"lua_ls"},
            automatic_installation = true,
        })
        require("mason-lspconfig").setup_handlers {
            function (server_name)
                lspconfig[server_name].setup {}
            end,
            ["lua_ls"] = function()
                require("lspconfig").lua_ls.setup {
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace"
                        }
                    }
                }
            }
            end,
        }
    end,
}
