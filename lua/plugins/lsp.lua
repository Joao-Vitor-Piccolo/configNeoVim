return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    -- inicializa mason
    require("mason").setup()

    -- mason-lspconfig usando a NOVA API
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright" },
      handlers = {
        function(server)
          local config = vim.lsp.config[server] or {}
          vim.lsp.start(config)
        end,
      },
    })

    -- configuração específica do pyright
    vim.lsp.config.pyright = {
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
          },
        },
      },
    }
  end,
}

