return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "folke/snacks.nvim",
  },
  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
      callback = function(event)
        vim.keymap.set(
          { "n", "x" },
          "<leader>ca",
          vim.lsp.buf.code_action,
          { buffer = event.buf, desc = "Code actions" }
        )
        vim.keymap.set(
          { "n" },
          "<leader>cD",
          require("fzf-lua").lsp_declarations,
          { buffer = event.buf, desc = "Go to declaration" }
        )
        vim.keymap.set(
          { "n" },
          "<leader>cd",
          require("fzf-lua").lsp_definitions,
          { buffer = event.buf, desc = "Go to definition" }
        )
        vim.keymap.set(
          { "n" },
          "<leader>ci",
          require("fzf-lua").lsp_implementations,
          { buffer = event.buf, desc = "Go to implementation" }
        )
        vim.keymap.set(
          { "n" },
          "<leader>ct",
          require("fzf-lua").lsp_typedefs,
          { buffer = event.buf, desc = "Go to type definition" }
        )
        vim.keymap.set(
          { "n" },
          "<leader>cr",
          require("fzf-lua").lsp_references,
          { buffer = event.buf, desc = "Find references" }
        )
        vim.keymap.set(
          { "n" },
          "<leader>ch",
          require("fzf-lua").lsp_document_diagnostics,
          { buffer = event.buf, desc = "Buffer diagnostics" }
        )
        vim.keymap.set({ "n" }, "<leader>cn", vim.lsp.buf.rename, { buffer = event.buf, desc = "Rename variable" })

        local function client_supports_method(client, method, bufnr)
          if vim.fn.has("nvim-0.11") == 1 then
            return client:supports_method(method, bufnr)
          else
            return client.supports_method(method, { bufnr = bufnr })
          end
        end
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
    local capabilities = require("blink.cmp").get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities())
    local servers = {
      bashls = {},
      lua_ls = {},
      gopls = {},
      pyright = {},
      ruff = {},
      dockerls = {},
      docker_compose_language_service = {},
      terraformls = {},
      marksman = {},
    }
    local ensure_installed = vim.list_extend(vim.tbl_keys(servers), {
      "stylua",
      "goimports",
      "gofumpt",
    })

    require("mason-tool-installer").setup({
      ensure_installed = ensure_installed,
    })

    require("mason-lspconfig").setup({
      ensure_installed = {}, -- explicitly set to an empty table (installs via mason-tool-installer)
      automatic_installation = false,
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })
  end,
}
