vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>u", function()
  require("lazy").load({ plugins = { "undotree" } })
  vim.cmd("UndotreeToggle")
end, { desc = "Toggle Undotree" })

