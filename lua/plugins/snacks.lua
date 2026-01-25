return {
	"folke/snacks.nvim",
	lazy = false,
	opts = {
		words = { enabled = true },
		indent = { enabled = true },
		lazygit = { enabled = true },
	},
	keys = {
		{
			"<leader>gg",
			function()
				Snacks.lazygit()
			end,
			desc = "LazyGit",
		},
	},
}
