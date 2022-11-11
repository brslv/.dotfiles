require("plugins")
require("nvim-lsp-installer").setup{}
require("configs.nvim-cmp")
require("configs.null-ls")
require("configs.nvim-lspconfig")
require("configs.nvim-transparent")
require("configs.nvim-cursorline")
require("configs.nvim-treesitter")
require("configs.nvim-telescope")
require("configs.nvim-treesitter-context")

local opt = vim.opt
local o = vim.o
local g = vim.g

o.termguicolors = true
o.ls = 0
o.ch = 0

vim.opt.winbar = '%f'

g.background = 'dark'
g.mapleader = ' '

opt.syntax = "ON"
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
opt.relativenumber = true
opt.mouse = 'a'
opt.list = true
opt.swapfile = false
opt.showmatch = true
opt.history = 500
opt.lazyredraw = true
opt.undofile = true
opt.undodir = os.getenv('HOME') .. '/.vimundo/undo'
opt.diffopt:append({ 'vertical' })

vim.cmd('colorscheme nord')

require("mappings")
require("configs.feline")
