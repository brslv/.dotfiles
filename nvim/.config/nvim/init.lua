require("plugins")
require("nvim-lsp-installer").setup{}
require("configs.nvim-cmp")
require("configs.null-ls")
require("configs.nvim-lspconfig")

vim.o.background = 'dark'

vim.g.mapleader = ' '

vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.list = true

vim.cmd('colorscheme tokyonight')
require("mappings")
