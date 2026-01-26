return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	opts = {},
	keys = {
		{
			"<leader>xd",
			"<cmd>Trouble diagnostics toggle filter.buf=0 win.position=bottom<cr>",
			desc = "[Trouble] Buffer diagnostics",
		},
		{
			"<leader>xs",
			"<cmd>Trouble symbols toggle win.position=bottom<cr>",
			desc = "[Trouble] Buffer symbols",
		},
		{
			"<leader>xl",
			"<cmd>Trouble lsp toggle win.position=bottom<cr>",
			desc = "[Trouble] Symbol definitions / references / ...",
		},
	},
}
