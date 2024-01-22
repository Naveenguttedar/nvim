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
            ensure_installed = { "html","cssls","cssmodules_ls","emmet_ls","quick_lint_js","tsserver","vtsls","emmet_language_server"}
    }
end

},
{
    "neovim/nvim-lspconfig",
    config=function()
        local lspconfig = require('lspconfig')
        lspconfig.html.setup {}
        lspconfig.vtsls.setup {}
        lspconfig.cssls.setup {}
        lspconfig.tsserver.setup {}
    end
}
}
