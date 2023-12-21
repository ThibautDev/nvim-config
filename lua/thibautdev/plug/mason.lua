return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "tsserver",
                "html",
                "cssls",
                "svelte",
                "lua_ls",
                "pyright",
            },
            automatic_installation = true, -- not the same as ensure_installed
        })
    end
}
