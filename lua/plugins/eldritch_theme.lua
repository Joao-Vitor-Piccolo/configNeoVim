return {
  "eldritch-theme/eldritch.nvim",
  lazy = false,
  priority = 1000,

  opts = {
    transparent = false,  

    fzf_colors = {
      true,
      bg = "-1",
      gutter = "-1",
    },
  },

  config = function(_, opts)
    require("eldritch").setup(opts)
    vim.cmd("colorscheme eldritch")
  end,
}

