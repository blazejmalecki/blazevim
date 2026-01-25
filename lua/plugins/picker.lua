return {
	"ibhagwan/fzf-lua",
	dependencies = {
		"nvim-mini/mini.icons",
	},
	opts = {},
	keys = {
		{
			"<leader><leader>",
			function()
				require("fzf-lua").history()
			end,
			desc = "Buffers/files history",
		},
		{
			"<leader>,",
			function()
				require("fzf-lua").files()
			end,
			desc = "Files",
		},
		{
			"<leader><",
			function()
				require("fzf-lua").files({ resume = true })
			end,
			desc = "Resume files",
		},
		{
			"<leader>.",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "Buffer grep",
		},
		{
			"<leader>>",
			function()
				require("fzf-lua").lgrep_curbuf({ resume = true })
			end,
			desc = "Resume buffer grep",
		},
		{
			"<leader>/",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Global grep",
		},
		{
			"<leader>?",
			function()
				require("fzf-lua").live_grep({ resume = true })
			end,
			desc = "Resume global grep",
		},
		{
			"<leader>`",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "Picker builtin commands",
		},
	},
}
