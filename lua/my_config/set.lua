vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.tabstop = 4       -- tamanho do tab no arquivo
vim.opt.shiftwidth = 4    -- tamanho da indentação ao dar >> ou autoindent
vim.opt.expandtab = true  -- usa espaços em vez de tabs
vim.opt.scrolloff = 8
vim.keymap.set("n", "<leader>t", function()
  -- split horizontal embaixo
    vim.cmd("botright 5split")
    vim.cmd("startinsert")
    -- abre terminal no diretório do buffer atual
    vim.cmd("terminal cd " .. vim.fn.expand("%:p:h") .. " && $SHELL")
    end, { desc = "Terminal below (cwd = buffer)" })
vim.api.nvim_set_hl(0, "ErrorLensError", {
  fg = "#FF6363",
  bg = "#4B252C",
})

vim.keymap.set("n", "<leader>cc", function()
  require("CopilotChat").toggle({
    window = {
      layout = "float",
      title = "Copilot Chat",
      width = 0.45,
      height = 0.4,

      -- posição
      relative = "editor",
      row = 1,
      col = vim.o.columns - math.floor(vim.o.columns * 0.45) - 2,
    },
  })
end, { desc = "Toggle Copilot Chat" })
