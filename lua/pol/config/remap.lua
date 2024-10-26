vim.g.mapleader = ' '
local km = vim.keymap
local keymap = vim.keymap

-- move lines up/down
km.set('v', 'J', ":m'>+1<CR>gv=gv")
km.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keeps cursour in the middle when scrolling
km.set('n', '<C-d>', '<C-d>zz')
km.set('n', '<C-u>', '<C-u>zz')



keymap.set("i", "<leader>jk", "<ESC>", {desc = "Sai do modo inserção com jk"})

keymap.set("n", "<leader>nh", "nohl<CR>", {desc = "Limpa os procurados"})

keymap.set("n", "<leader>+", "<C-a>", {desc = "Incrementa numero"})

keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrementa numero numero"})


keymap.set("n", "<leader>to", ":tabedit %<CR>", {desc = "Abre o arquivo atual em um nova aba"})



-- Widow management
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Divide a tela verticalmente"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "Divide a tela horizontalmente"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "Faz divisões de mesmo tamanho"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "Fecha a divisao atual"})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Abre uma aba"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Fecha uma aba"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "Proxima aba"})
keymap.set("n", "<leader>tp", "<cmd>tabnew<CR>", {desc = "Aba anterior"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Abre o buffer atual em uma nova aba"})

