vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" 
vim.opt.undofile = true
vim.opt.tabstop = 4       -- tamanho do tab no arquivo
vim.opt.shiftwidth = 4    -- tamanho da indentação ao dar >> ou autoindent
vim.opt.expandtab = true  -- usa espaços em vez de tabs
