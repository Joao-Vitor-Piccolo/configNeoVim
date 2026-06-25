vim.o.updatetime = 400
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focus = false,
      scope = "cursor",
    })
    vim.diagnostic.config({
        float = {border = "rounded"}
        })
  end,
})

