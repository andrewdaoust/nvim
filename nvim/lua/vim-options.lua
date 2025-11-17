vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.expandtab = true
local TAB_SIZE = 4
vim.opt.tabstop = TAB_SIZE
vim.opt.softtabstop = TAB_SIZE
vim.opt.shiftwidth = TAB_SIZE

vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.diagnostic.config({
	virtual_text = {
		severity = {
			vim.diagnostic.severity.ERROR,
			vim.diagnostic.severity.WARN,
			vim.diagnostic.severity.INFO,
			vim.diagnostic.severity.HINT,
		},
		underline = true,
		signs = true,
		severity_sort = true,
		update_in_insert = false,
	},
})

vim.opt.foldlevelstart = 99
