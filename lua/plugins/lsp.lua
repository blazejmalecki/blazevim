return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"ibhagwan/fzf-lua",
		"saghen/blink.cmp",
	},
	config = function()
		local servers = {
			-- Go
			gopls = {},
			-- Python
			pyright = {},
			ruff = {},
		}

		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = servers,
			handlers = {
				function(name)
					lspconfig[name].setup({
						capabilities = require("blink.cmp").get_lsp_capabilities(servers[name].capabilities),
					})
				end,
			},
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

				vim.keymap.set({ "n" }, "<leader>cs", function()
					require("fzf-lua").lsp_document_symbols()
				end, { buffer = event.buf, desc = "Buffer symbols" })

				vim.keymap.set({ "n" }, "<leader>cS", function()
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
