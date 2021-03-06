require("pretty-fold").setup({
  fill_char = " ",
  process_comment_signs = "delete",
  sections = {
    left = {
      "content",
    },
    right = {
      " ",
      "number_of_folded_lines",
      ": ",
      "percentage",
      " ",
      function(config)
        return config.fill_char:rep(3)
      end,
    },
  },
  keep_indentation = true,
})

vim.cmd([[hi Folded guibg=#1f2428]])
