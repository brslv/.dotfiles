-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with kj" })
keymap.set("n", "<leader>h", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>fw", ":w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>fq", ":q<CR>", { desc = "Quit file" })
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-h>", "<C-w>h")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')
