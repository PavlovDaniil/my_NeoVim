-- 🔧 Автодополнение с nvim-cmp
local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(), -- вызвать список вручную
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- подтвердить выбор
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- LSP (pyright)
    { name = "buffer" },   -- текст из текущего файла
  }),
})

