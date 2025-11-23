require("my_config.remap")
require("config.eldritch_theme")
vim.cmd("colorscheme eldritch")

vim.api.nvim_set_hl(0, "UndotreeNodeCurrent", { fg = "#ffffff", bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "UndotreeNode", { fg = "#aaaaaa", bg = "NONE" })
vim.api.nvim_set_hl(0, "UndotreeRoot", { fg = "#ff9e64", bg = "NONE" })

