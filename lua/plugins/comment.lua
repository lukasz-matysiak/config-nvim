return {
  "echasnovski/mini.comment",
  event = "VeryLazy",
  opts = {
    options = {
      custom_commentstring = function()
        if vim.bo.filetype == "cpp" then
            return "// %s"
        else
            return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end
      end,
    },
  },
}
