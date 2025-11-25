vim.g.mapleader = " "
local map = vim.keymap.set

-- Открыть / закрыть дерево файлов
map("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Быстро открыть терминал
map("n", "<leader>n", ":ToggleTerm<CR>", { noremap = true, silent = true })

-- Telescop
map("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
map("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true, silent = true })
