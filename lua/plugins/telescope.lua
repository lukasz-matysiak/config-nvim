return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {"<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find files"}
    },
    opts = {
        pickers = {
            find_files = {
                follow = true,
                hidden = true
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
