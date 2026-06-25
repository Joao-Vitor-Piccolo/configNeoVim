return {
  "bluz71/vim-moonfly-colors",
  lazy = false,
  transparecy = true,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme moonfly")
    vim.cmd([[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE
    ]])
  end,
}
