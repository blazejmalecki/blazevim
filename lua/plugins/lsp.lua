return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "saghen/blink.cmp",
    "folke/snacks.nvim",
  },
  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
      callback = function(event)
        vim.keymap.set({ "n" }, "<leader>ch", vim.lsp.buf.hover, { buffer = event.buf, desc = "Hover symbol" })
        vim.keymap.set({ "n" }, "<leader>cn", vim.lsp.buf.rename, { buffer = event.buf, desc = "Rename symbol" })
      end,
    })

    vim.diagnostic.config({
      severity_sort = true,
      float = { border = "rounded", source = "if_many" },
      underline = { severity = vim.diagnostic.severity.ERROR },
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "󰅚",
          [vim.diagnostic.severity.WARN] = "󰀪",
          [vim.diagnostic.severity.INFO] = "󰋽",
          [vim.diagnostic.severity.HINT] = "󰌶",
        },
      },
      virtual_text = {
        source = "if_many",
        spacing = 2,
        format = function(diagnostic)
          local diagnostic_message = {
            [vim.diagnostic.severity.ERROR] = diagnostic.message,
            [vim.diagnostic.severity.WARN] = diagnostic.message,
            [vim.diagnostic.severity.INFO] = diagnostic.message,
            [vim.diagnostic.severity.HINT] = diagnostic.message,
          }
          return diagnostic_message[diagnostic.severity]
        end,
      },
    })

    local servers = {}
    local addons = {
      "stylua",
    }

    require("mason-tool-installer").setup({
      ensure_installed = vim.list_extend(vim.tbl_keys(servers), addons),
    })

    require("mason-lspconfig").setup({
      ensure_installed = {}, -- explicitly set to an empty table (installs via mason-tool-installer)
      automatic_installation = false,
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          local capabilities = require("blink.cmp").get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities())

          server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})

          require("lspconfig")[server_name].setup(server)
        end,
      },
    })
  end,
}
