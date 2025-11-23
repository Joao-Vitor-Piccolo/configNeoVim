 return {
   "eldritch-theme/eldritch.nvim",
   lazy = false,
 
   config = function(_, opts)
     require("eldritch").setup(opts)
     vim.cmd("")
   end,
 }
 
