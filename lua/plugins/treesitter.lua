return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		main = "nvim-treesitter.configs",
		build = ":TSUpdate",
		opts = {
			auto_install = true,
			indent = { enable = true },
			highlight = { enable = true },
			fold = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Enter>",
					node_incremental = "<Enter>",
					scope_incremental = false,
					node_decremental = "<Backspace>",
				},
			},
			ensure_installed = {
				-- Required
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				-- Additional
				"go",
				"python",
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "master",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		main = "nvim-treesitter.configs",
		opts = {
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["if"] = "@function.inner",
						["af"] = "@function.outer",
						["ic"] = "@class.inner",
						["ac"] = "@class.outer",
					},
				},
			},
		},
	},
}
