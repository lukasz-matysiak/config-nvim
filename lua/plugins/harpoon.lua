return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-telescope/telescope.nvim"
    },
    config = function()
      local harpoon = require("harpoon")
      ---@diagnostic disable-next-line: missing-parameter
      harpoon:setup()
      -- basic telescope configuration
      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
      end

      local function map(lhs, rhs, opts)
        vim.keymap.set("n", lhs, rhs, opts or {})
      end

      map("<leader>ha", function() harpoon:list():append() end, { desc = "[H]arpoon [a]dd" })
      -- map("<leader>hs", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "[H]arpoon [s]how" })
      map("<leader>hs", function() toggle_telescope(harpoon:list()) end, { desc = "[H]arpoon [s]how"})
      map("<leader>hr", function() harpoon:list():remove() end, { desc = "[H]arpoon [r]emove"})
      map("<leader>h1", function() harpoon:list():select(1) end, { desc = "[H]arpoon [1]" })
      map("<leader>h2", function() harpoon:list():select(2) end, { desc = "[H]arpoon [2]" })
      map("<leader>h3", function() harpoon:list():select(3) end, { desc = "[H]arpoon [3]" })
      map("<leader>h4", function() harpoon:list():select(4) end, { desc = "[H]arpoon [4]" })
      map("<leader>hn", function() harpoon:list():next() end, { desc = "[H]arpoon [n]ext" })
      map("<leader>hb", function() harpoon:list():prev() end, { desc = "[H]arpoon [b]ack" })
    end
  }
}
