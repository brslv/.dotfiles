require("plugins")
require("nvim-lsp-installer").setup{}
require("configs.nvim-cmp")
require("configs.null-ls")
require("configs.nvim-lspconfig")
require("configs.nvim-transparent")
require("configs.nvim-cursorline")
require("configs.nvim-treesitter")

local opt = vim.opt
local o = vim.o
local g = vim.g

o.termguicolors = true

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
vim.cmd("let &viminfo .= '$HOME/.viminfo'")

require("mappings")
require("configs.feline")
