return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- LSPs usando a nova API
      vim.lsp.config["lua_ls"] = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      }

      vim.lsp.config["cssls"] = {
        settings = {
          css = { validate = true },
          scss = { validate = true },
          less = { validate = true },
        },
      }

      vim.lsp.config["jdtls"] = {}

      -- Nomes corrigidos aqui:
      vim.lsp.config["dockerls"] = {}

      vim.lsp.config["docker_compose_language_service"] = {}

      vim.lsp.config["html"] = {}

      vim.lsp.config["yamlls"] = {}

      vim.lsp.config["emmet_ls"] = {
        filetypes = {
          "html",
          "css",
          "javascriptreact",
          "typescriptreact",
          "jsx",
          "tsx",
          "xml",
        },
      }

      -- DICA: O 'tsserver' foi renomeado para 'ts_ls' nas versões mais recentes.
      -- Se parar de funcionar, mude de "tsserver" para "ts_ls" aqui e no enable.
      vim.lsp.config["tsserver"] = {
        cmd = { "typescript-language-server", "--stdio" },
        filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
        on_attach = function(client, bufnr)
          client.server_capabilities.documentFormattingProvider = false

          local bufopts = { noremap = true, silent = true, buffer = bufnr }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
        end,
      }

      vim.lsp.config["pyright"] = {
        settings = {
          python = {
            venvPath = ".",
            venv = ".venv",
          },
        },
      }

      -- Ativar LSPs com os nomes corrigidos
      vim.lsp.enable("jdtls")
      vim.lsp.enable("tsserver")
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("yamlls") -- corrigido
      vim.lsp.enable("cssls")
      vim.lsp.enable("html")
      vim.lsp.enable("emmet_ls")
      vim.lsp.enable("pyright")
      vim.lsp.enable("dockerls") -- corrigido
      vim.lsp.enable("docker_compose_language_service") -- corrigido
    end,
  },
}
