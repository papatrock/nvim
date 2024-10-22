vim.g.mapleader = ' '
local km = vim.keymap
local keymap = vim.keymap

-- move lines up/down
km.set('v', 'J', ":m'>+1<CR>gv=gv")
km.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keeps cursour in the middle when scrolling
km.set('n', '<C-d>', '<C-d>zz')
km.set('n', '<C-u>', '<C-u>zz')

keymap.set("n", "<leader>ta", ":tabedit %<CR>", {desc = "Open current file in a new tab"})

-- Próxima aba
keymap.set("n", "<leader>tn", ":tabnext<CR>", {desc = "Go to the next tab"})
-- Aba anterior
keymap.set("n", "<leader>tp", ":tabprevious<CR>", {desc = "Go to the previous tab"})
-- Fechar aba atual
keymap.set("n", "<leader>tc", ":tabclose<CR>", {desc = "Close current tab"})
