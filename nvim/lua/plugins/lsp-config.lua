return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ansiblels",
					"pyright",
					"gopls",
					"eslint",
					"ts_ls",

					"stylua",
					--"prettier",
					--"eslint_d",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.enable("lua_ls")
			vim.lsp.config("lua_ls", { capabilities = capabilities })

			vim.lsp.enable("ansiblels")
			vim.lsp.config("ansiblels", { capabilities = capabilities })

			vim.lsp.enable("pyright")
			vim.lsp.config("pyright", { capabilities = capabilities })

			vim.lsp.enable("gopls")
			vim.lsp.config("gopls", {
				capabilities = capabilities,
				settings = {
					gopls = {
						staticcheck = true,
					},
				},
			})

			vim.lsp.enable("eslint")
			vim.lsp.config("eslint", { capabilities = capabilities })

			vim.lsp.enable("ts_ls")
			vim.lsp.config("ts_ls", { capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
