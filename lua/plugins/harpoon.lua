return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
      local harpoon = require("harpoon")
      ---@diagnostic disable-next-line: missing-parameter
      harpoon:setup()
      local function map(lhs, rhs, opts)
        vim.keymap.set("n", lhs, rhs, opts or {})
      end
      map("<leader>ha", function() harpoon:list():append() end, { desc = "[H]arpoon [a]dd" })
      map("<leader>hs", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "[H]arpoon [s]how" })
      map("<leader>h1", function() harpoon:list():select(1) end, { desc = "[H]arpoon [1]" })
      map("<leader>h2", function() harpoon:list():select(2) end, { desc = "[H]arpoon [2]" })
      map("<leader>h3", function() harpoon:list():select(3) end, { desc = "[H]arpoon [3]" })
      map("<leader>h4", function() harpoon:list():select(4) end, { desc = "[H]arpoon [4]" })
      map("<leader>hn", function() harpoon:list():next() end, { desc = "[H]arpoon [n]ext" })
      map("<leader>hb", function() harpoon:list():prev() end, { desc = "[H]arpoon [b]ack" })
    end
  }
}
