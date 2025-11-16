local configs = vim.lsp.configs

if not configs.gopls then
  configs.gopls = {
    default_config = {
      cmd = { "gopls" },
      filetypes = { "go" },
      root_dir = vim.fs.dirname(
        vim.fs.find({ "go.mod", ".git" }, { upward = true })[1]
      ),
    },
  }
end

vim.lsp.start(configs.gopls.default_config)

