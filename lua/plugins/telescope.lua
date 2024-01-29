return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {"<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find files"}
    },
    opts = {
        pickers = {
            find_files = {
                find_command = {
                    'fd',
                    '--type',
                    'f',
                    '--color=never',
                    '--hidden',
                    '--follow',
                    '-E',
                    '.git/*'
                }
                -- follow = true,
                -- hidden = true
            }
        }
    }
    -- opts = {
    --   pickers = {
    --     git_files = {
    --       others = false,
    --       recurse_submodules = true
    --     }
    --   }
    -- }
  }
}
