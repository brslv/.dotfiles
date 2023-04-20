return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'morhetz/gruvbox'}
  use {'folke/tokyonight.nvim'}
  use {'github/copilot.vim'}

  -- colors
  use {'macguirerintoul/night_owl_light.vim'}
  use {'cormacrelf/vim-colors-github'}
  use {'arcticicestudio/nord-vim'}

  use {'neovim/nvim-lspconfig'}
  use {'williamboman/mason.nvim'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/vim-vsnip'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    }
  }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup{}
    end
  }
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require("gitsigns").setup{}
    end
  }
  use {'feline-nvim/feline.nvim'}
  use {'yamatsum/nvim-cursorline'}
  use {'tpope/vim-fugitive'}
  use {'pantharshit00/vim-prisma'}
  use {'tpope/vim-surround'}
  use {'nvim-treesitter/nvim-treesitter-context'}
end)
