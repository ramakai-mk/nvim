vim.g.mapleader = " "

local keymap = vim.keymap

--
keymap.set("i", "jk", "<ESC>", {desc = "exit insert jk"})

--window management
keymap.set("n", "<leader>sv", "<C-w>v",{desc = "vertical split"})--split verically
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "horizontal split"})--split horizontal
keymap.set("n", "<leader>se", "<C-w>=", {desc = "resize split"})--split equal
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "close split"})--close window

--tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "open tab"})--open tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "close tab"})--close tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "next tab"})--next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "previus tab"})--previus tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "open currentfile"})--open current tab

--remaps
--move when highlith
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
