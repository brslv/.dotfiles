local colors = require("colors").base_colors

require('nvim-cursorline').setup {
  cursorline = {
    enable = false,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = false, bg = colors.hl_bg, fg = colors.hl_fg },
  }
}

