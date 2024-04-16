return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        {
            "nvim-telescope/telescope-live-grep-args.nvim" ,
            -- This will not install any breaking changes.
            -- For major updates, this must be adjusted manually.
            --   version = "^1.0.0",
        },
    },
    keys = {
      {"<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find files"},
      {"<leader>sg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Grep files with args"}
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
        },
        extensions = {
            live_grep_args = {}
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
