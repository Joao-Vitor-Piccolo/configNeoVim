return {
    "mbbill/undotree",
    lazy = false,
    config = function()
      -- Garante que buffers do Undotree sejam modificáveis
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "undotree",
        callback = function()
          vim.opt_local.modifiable = true
        end,
      })
    end,
  }
