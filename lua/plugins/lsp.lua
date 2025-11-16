return {
    "neovim/nvim-lspconfig",
    config = function()
      require("lsp") -- 👈 вызывает lua/lsp/init.lua
    end,
  }

