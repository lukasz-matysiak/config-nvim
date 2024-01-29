return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--completion-style=detailed",
            "--clang-tidy",
            "--fallback-style=google",
            "--function-arg-placeholders",
            "--header-insertion=never",
            "-j=4",
          }
        },
        qmlls = {
        }
      },
    },
  }
}
