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
	-- написано с помощью ИИ если вы занеет как улучшить то помогите пожалуйстся, я новичёк в настройке NeoVim
        function(server_name)
		if server_name == "pyright" then
            lspconfig.pyright.setup({
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
                end,
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            useLibraryCodeForTypes = true,
                        },
                        pythonPath = function()
                            -- Попытка найти .venv в корне проекта
                            local cwd = vim.fn.getcwd()
                            if vim.fn.isdirectory(cwd .. "/.venv") == 1 then
                                return cwd .. "/.venv/bin/python"
                            else
                                return vim.fn.exepath("python") -- fallback на глобальный Python
                            end
                        end,
                    }
                }
            })
        else
            lspconfig[server_name].setup({ capabilities = capabilities })
        end
        end,
      },
    })
  end,
}
