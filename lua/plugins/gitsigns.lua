return {
  "lewis6991/gitsigns.nvim",
  event = "BufRead", -- грузится при открытии файла
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "│", texthl = "GitSignsAdd" },
        change = { text = "│", texthl = "GitSignsChange" },
        delete = { text = "_", texthl = "GitSignsDelete" },
        topdelete = { text = "‾", texthl = "GitSignsDelete" },
        changedelete = { text = "~", texthl = "GitSignsChange" },
      },
      numhl = false,
      linehl = false,
      watch_gitdir = {
        interval = 1000,
        follow_files = true
      },
      current_line_blame = true, -- показывать автора изменений строки
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
      },
    })
  end,
}

