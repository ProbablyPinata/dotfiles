local km = vim.keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- NORMAL/VISUAL
km.set("n", "<leader>pv", vim.cmd.Ex)

-- centre when cycling
-- zz centres the cursor
-- zv opens folds
km.set("n", "n", "nzvzz")
km.set("n", "N", "Nzvzz")
km.set("n", "<C-o>", "<C-o>zvzz")
km.set("n", "<C-i>", "<C-i>zvzz")


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
-- d 
-- e
-- f telescope (find ...)
-- g
-- h harpoon
-- i
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
-- t 
-- u Undotree
-- v OS paste
-- w colorizer
-- x 
-- y
-- z
