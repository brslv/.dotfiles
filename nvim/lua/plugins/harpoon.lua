return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>ad", function()
      harpoon:list():add()
    end)
    vim.keymap.set("n", "<leader>ah", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set("n", "<leader>aw", function()
      harpoon:list():select(1)
    end)
    vim.keymap.set("n", "<leader>ae", function()
      harpoon:list():select(2)
    end)
    vim.keymap.set("n", "<leader>as", function()
      harpoon:list():select(3)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<leader>ap", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<leader>an", function()
      harpoon:list():next()
    end)
  end,
}
