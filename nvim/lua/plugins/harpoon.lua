return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>dd", function()
      harpoon:list():add()
    end)
    vim.keymap.set("n", "<leader>dh", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set("n", "<leader>dw", function()
      harpoon:list():select(1)
    end)
    vim.keymap.set("n", "<leader>de", function()
      harpoon:list():select(2)
    end)
    vim.keymap.set("n", "<leader>dr", function()
      harpoon:list():select(3)
    end)
    vim.keymap.set("n", "<leader>df", function()
      harpoon:list():select(3)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<leader>dp", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<leader>dn", function()
      harpoon:list():next()
    end)
  end,
}
