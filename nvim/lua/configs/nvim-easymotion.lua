local map = require("utils").map

-- Disable default mappings
vim.g.EasyMotion_do_mapping = 0
-- Turn on case-insensitive feature
vim.g.EasyMotion_smartcase = 1

map('n', 's', '<Plug>(easymotion-overwin-f)')
map('n', '<Leader>j', '<Plug>(easymotion-j)')
map('n', '<Leader>k', '<Plug>(easymotion-k)')
