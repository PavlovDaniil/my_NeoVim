return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },

  config = function()
    local mason_lspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    mason_lspconfig.setup({
      ensure_installed = { "lua_ls", "pyright" }, -- добавь свои LSP
      automatic_installation = true,
      handlers = {
        function(server_name)
          lspconfig[server_name].setup({})
        end,
      },
    })
  end,
}
