local opt = vim.opt
local o = vim.o
local g = vim.g

g.gruvbox_contrast_dark = "soft"
g.gruvbox_contrast_light = "soft"

o.termguicolors = true
o.ls = 2
o.ch = 0

vim.opt.winbar = '%f'
opt.syntax = "ON"
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
opt.swapfile = false
opt.showmatch = true
opt.history = 500
opt.lazyredraw = true
opt.undofile = true
opt.undodir = os.getenv('HOME') .. '/.vimundo/undo'
opt.diffopt:append({ 'vertical' })
opt.foldmethod = 'indent'
opt.foldlevel = 99
opt.textwidth = 120
opt.cmdheight = 2

vim.cmd("colorscheme gruvbox")
