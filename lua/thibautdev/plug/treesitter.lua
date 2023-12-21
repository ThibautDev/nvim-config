return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/playground" },
    config = function()
        require'nvim-treesitter.configs'.setup {
            -- A list of parser names, or "all" (the five l>isted parsers should always be installed)
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            highlight = {
                enable = true,
            },

            vim.cmd(':silent TSUpdate')
        }
    end,
}
