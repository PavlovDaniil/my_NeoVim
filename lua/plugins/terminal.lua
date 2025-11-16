return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-\>]], -- Ctrl + \ откроет терминал
      direction = "horizontal",      -- можно "horizontal" или "vertical"
      float_opts = { border = "curved" },
    })
  end,
}
