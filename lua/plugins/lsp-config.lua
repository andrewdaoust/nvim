return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ansiblels", "pyright", "gopls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("ansiblels")
            vim.lsp.enable("pyright")
            vim.lsp.enable("gopls")
        end
    }
}
