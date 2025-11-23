-- ~/.config/nvim/lua/plugins/lsp_neovim.lua
return {
  {
    "neovim/nvim-lspconfig",
    version = false,
    config = function()
      local ok, lspconfig = pcall(require, "lspconfig")
      if not ok then
        vim.notify("nvim-lspconfig não carregou", vim.log.levels.ERROR)
        return
      end

      -- TS / TSX
      lspconfig.ts_ls.setup({
        filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
        root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
        capabilities = vim.lsp.protocol.make_client_capabilities(),
        on_attach = function(client, bufnr)
          local opts = { noremap = true, silent = true }
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        end,
      })
    end,
  },
}

