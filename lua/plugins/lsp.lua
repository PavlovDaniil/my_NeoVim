return {
  "neovim/nvim-lspconfig",
  function()
    local lspconfig = require("lspconfig")
    lspconfig.pyright.setup({
	settins = {
	  pyright = {
	    python = {
		pythonPath = ".venv/bin/python"
		}
	  }
	}
    })
  end,

}
