return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	opts = {},
	keys = {
		{
			"<leader>cd",
			"<cmd>Trouble diagnostics toggle filter.buf=0 win.position=bottom<cr>",
			desc = "Buffer diagnostics",
		},
		{
			"<leader>cs",
			"<cmd>Trouble symbols toggle focus=false win.position=bottom<cr>",
			desc = "Symbols",
		},
		{
			"<leader>cl",
			"<cmd>Trouble lsp toggle focus=false win.position=bottom<cr>",
			desc = "LSP Definitions / references / ...",
		},
	},
}
