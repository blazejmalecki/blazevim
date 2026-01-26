return {
	"gbprod/yanky.nvim",
	opts = {},
	keys = {
		{
			"p",
			"<Plug>(YankyPutAfter)",
			mode = { "n", "x" },
			desc = "Put yank after",
		},
		{
			"P",
			"<Plug>(YankyPutBefore)",
			mode = { "n", "x" },
			desc = "Put yank before",
		},
		{
			"gp",
			"<Plug>(YankyGPutAfter)",
			mode = { "n", "x" },
			desc = "GPut yank after",
		},
		{
			"gP",
			"<Plug>(YankyGPutBefore)",
			mode = { "n", "x" },
			desc = "GPut yank before",
		},
		{
			"<c-p>",
			"<Plug>(YankyPreviousEntry)",
			desc = "Previous yank",
		},
		{
			"<c-n>",
			"<Plug>(YankyNextEntry)",
			desc = "Next yank",
		},
	},
}
