local km = vim.keymap
local g = vim.g
local cmd = vim.cmd

g.mapleader = ' '
g.maplocalleader = '`'

-- NORMAL/VISUAL
km.set("n", "<leader>pv", cmd.Ex)

-- centre when cycling
-- zz centres the cursor
-- zv opens folds
km.set("n", "n", "nzvzz")
km.set("n", "N", "Nzvzz")
km.set("n", "<C-o>", "<C-o>zvzz")
km.set("n", "<C-i>", "<C-i>zvzz")

-- Move visual region up/down
km.set("v", "<C-J>", ":move '>+1<CR>gv=gv")
km.set("v", "<C-K>", ":move '<-2<CR>gv=gv")

-- centre when scrolling
km.set("n", "<C-d>", "<C-d>zz")
km.set("n", "<C-u>", "<C-u>zz")


-- change text without putting it in the vim register
km.set("n", "c", '"_c')
km.set("n", "C", '"_C')
km.set("n", "cc", '"_cc')
km.set("x", "c", '"_c')

-- copy/paste with OS clipboard
km.set("n", "<leader>c", '"+y')
km.set("n", "<leader>v", '"+p')
km.set("v", "<leader>c", '"+y')
km.set("v", "<leader>v", '"+p')

-- INSERT

-- <leader>...
-- these are mostly populated by plugins

-- a 
-- b
-- c OS copy
-- d Obsi[D]ian
-- e oil (explore)
-- f telescope (find ...)
-- g git (fugitive/neogit), lsp goto (definition, references)
-- h harpoon
-- i img-clip
-- j
-- k
-- l
-- m
-- n
-- o Org-Mode
-- p Project
-- q
-- r
-- s
-- t trouble
-- u Undotree
-- v OS paste
-- w
-- x 
-- y
-- z
--

-- <leader><leader>
-- a 
-- b
-- c colorizer
-- d 
-- e
-- f 
-- g
-- h 
-- i
-- j
-- k
-- l
-- m
-- n
-- o
-- p
-- q
-- r
-- s
-- t 
-- u
-- v
-- w
-- x 
-- y
-- z
