return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = {
				"stylua",
			},
			go = {
				"goimports",
				"gofumpt",
			},
			python = {
				"ruff",
				"ruff_organize_imports",
				"ruff_format",
			},
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
	},
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format buffer",
		},
	},
}
