return {
    "eldritch-theme/eldritch.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = false,  -- Pode mudar para true se quiser transparência
      -- outras opções do Eldritch aqui
    },
    config = function(_, opts)
      -- Inicializa o tema
      require("eldritch").setup(opts)
      vim.cmd("colorscheme eldritch")

      -- Define highlights obrigatórios para o Undotree
      vim.api.nvim_set_hl(0, "UndotreeNodeCurrent", { fg = "#ffffff", bg = "#1e1e2e" })
      vim.api.nvim_set_hl(0, "UndotreeNode", { fg = "#aaaaaa", bg = "NONE" })
      vim.api.nvim_set_hl(0, "UndotreeRoot", { fg = "#ff9e64", bg = "NONE" })
      vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#2d8a46", bg = "NONE" })  -- ASCII art
      vim.api.nvim_set_hl(0, "SnacksDashboardIcon",   { fg = "#2d8a46", bg = "NONE" })  -- ícones
    end,
  }
