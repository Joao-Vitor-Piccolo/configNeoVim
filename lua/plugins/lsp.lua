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

      vim.lsp.config["html"] = {}

      vim.lsp.config["emmet-language-server"] = {
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

      vim.lsp.config["pyright"] = {}
      vim.lsp.config["prettier"] = {}

      vim.lsp.config["ts_ls"] = {
        settings = {
          completions = {
            completeFunctionCalls = true,
          },
        },
      }

      -- Ativar LSPs
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("ts_ls") 
      vim.lsp.enable("prettier")
      vim.lsp.enable("cssls")
      vim.lsp.enable("html")
      vim.lsp.enable("emmet-language-server")
      vim.lsp.enable("pyright")
      vim.lsp.enable("tsserver")
    end,
  },
}

