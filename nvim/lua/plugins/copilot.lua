return {
	{ "github/copilot.vim" },
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			model = "claude-sonnet-4",
			temperature = 0.3, -- Lower = focused, higher = creative
			window = {
				layout = "vertical", -- 'vertical', 'horizontal', 'float'
				width = 0.40, -- 33% of screen width
			},
            auto_insert_mode = true,     -- Enter insert mode when opening
		},
		keys = {
			{ "<leader>cc", ":CopilotChat<CR>", mode = "n", desc = "Chat with Copilot" },
			{ "<leader>cc", ":CopilotChat<CR>", mode = "v", desc = "Chat with Copilot" },
			{ "<leader>ce", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain code" },
			{ "<leader>cr", ":CopilotChatReview<CR>", mode = "v", desc = "Review code" },
			{ "<leader>cf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix code issues" },
			{ "<leader>co", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize code" },
			{ "<leader>cd", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate docs for code" },
			{ "<leader>ct", ":CopilotChatTests<CR>", mode = "v", desc = "Generate tests for code" },
			{ "<leader>cm", ":CopilotChatCommit<CR>", mode = "n", desc = "Generate commit message" },
			{
				"<leader>cs",
				":CopilotChatCommit<CR>",
				mode = "v",
				desc = "Generate commit message for selection",
			},
		},
		config = function()
			vim.api.nvim_create_autocmd("BufEnter", {
				pattern = "copilot-*",
				callback = function()
					vim.opt_local.relativenumber = false
					vim.opt_local.number = false
					vim.opt_local.conceallevel = 0
				end,
			})
		end,
	},
}
