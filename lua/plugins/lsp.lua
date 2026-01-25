return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"saghen/blink.cmp",
		"ibhagwan/fzf-lua",
	},
	config = function()
		local servers = {
			-- Go
			gopls = {},
			-- Python
			basedpyright = {},
			ruff = {},
		}
		local addons = {
			-- Lua
			"stylua",
			-- Go
			"goimports",
			"gofumpt",
			-- Python
			"ruff",
		}

		require("mason-lspconfig").setup({
			ensure_installed =  vim.tbl_keys(servers),
			handlers = {
				function(name)
					lspconfig[name].setup({
						capabilities = require("blink.cmp").get_lsp_capabilities(servers[name].capabilities),
					})
				end,
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = addons,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(event)
				vim.keymap.set({ "n" }, "K", vim.lsp.buf.hover, { buffer = event.buf, desc = "Hover symbol" })

				vim.keymap.set({ "n" }, "gd", function()
					require("fzf-lua").lsp_definitions()
				end, { buffer = event.buf, desc = "Symbol definition" })

				vim.keymap.set({ "n" }, "gr", function()
					require("fzf-lua").lsp_references()
				end, { buffer = event.buf, desc = "Symbol references" })

				vim.keymap.set({ "n" }, "gs", function()
					require("fzf-lua").lsp_document_symbols()
				end, { buffer = event.buf, desc = "Buffer symbols" })

				vim.keymap.set({ "n" }, "gS", function()
					require("fzf-lua").lsp_live_workspace_symbols()
				end, { buffer = event.buf, desc = "Global symbols" })

				vim.keymap.set(
					{ "n" },
					"<leader>cn",
					vim.lsp.buf.rename,
					{ buffer = event.buf, desc = "Rename symbol" }
				)
			end,
		})
	end,
}
