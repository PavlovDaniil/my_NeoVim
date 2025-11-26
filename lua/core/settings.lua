vim.o.number = true
vim.o.relativenumber = true
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.o.termguicolors=true
vim.o.tabstop = 4
vim.g.codeium_disable_bindings = 1
vim.o.pumblend = 20
vim.o.winblend = 20

-- буфер обмена
vim.opt.clipboard = "unnamedplus"

-- виртуальные отступы
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",  -- любой символ или пусто
    spacing = 2,   -- отступ от текста
  },
  signs = true,     -- значки слева (как сейчас)
  underline = true, -- подчёркивание ошибки
})
