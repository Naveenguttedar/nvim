return{
    {    "williamboman/mason.nvim",
        config=function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config=function()
            require("mason-lspconfig").setup {
                ensure_insalled = { "html","cssls","cssmodules_ls","emmet_ls","vtsls","emmet_language_server"}
            }
        end

    },
    {
        "neovim/nvim-lspconfig",
        config=function()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            lspconfig.html.setup {
                capabilities=capabilities
            }
            lspconfig.vtsls.setup {

                capabilities=capabilities
            }
            lspconfig.cssls.setup {capabilities=capabilities}
        end
    }
}
