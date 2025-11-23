return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- linguagens que você quer suportar
      ensure_installed = { "lua", "python", "javascript", "html", "css" },
      highlight = {
        enable = true,        -- ativa a highlight do Treesitter
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,        -- indentação baseada em Treesitter
      },
    })
  end,
}

