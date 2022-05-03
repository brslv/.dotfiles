require("plugins")
require("nvim-lsp-installer").setup{}
require("configs.nvim-cmp")
require("configs.null-ls")
require("configs.nvim-lspconfig")

local opt = vim.opt
local o = vim.o
local g = vim.g

o.background = 'dark'

g.mapleader = ' '

opt.clipboard = 'unnamedplus'
opt.splitright = true
opt.splitbelow = true
opt.autoindent = true
opt.cursorline = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartcase = true
opt.ignorecase = true
opt.termguicolors = true
opt.relativenumber = true
opt.mouse = 'a'
opt.list = true
opt.swapfile = false
opt.showmatch = true
opt.history = 500
opt.lazyredraw = true

vim.cmd('colorscheme tokyonight')
require("mappings")
