return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter')
    configs.setup({
      ensure_installed = { "lua", "vim", "vimdoc", "markdown", "markdown_inline", "typescript", "tsx" },
      highlight = { enable = true },
    })
  end
}
