vim.o.number = true
vim.o.relativenumber = true
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.o.termguicolors=true
vim.o.tabstop = 4

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
