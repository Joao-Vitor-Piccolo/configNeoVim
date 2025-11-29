local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- local lazypath isso significa que ele quer achar o path do lazy
-- vim.fn.stdpath() -> vim. são a forma que voce interage com o core do vim pela API do nvim
-- fn.stdpath -> fn significa function e stdpath stardard path 
-- O FN indica as funções que existem dentro do proprio VIM, e já são built-in

-- a função stardard path serve para procurar paths que segue a XDG do linux
-- Quando voce passa o parametro "data", ele diz: 
--"Dentro do nosso XDG procurando por data, eu quero procurar por lazy ou lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- Insira o lazyvim dentro do runtimepath do nvim
vim.opt.runtimepath:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
