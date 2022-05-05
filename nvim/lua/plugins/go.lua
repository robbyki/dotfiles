require("go").setup({
  run_in_floaterm = true,
  gofmt = "gofumpt",
  lsp_codelens = true,
  max_line_len = 120, -- max line length in goline format
  comment_placeholder = "",
  icons = { breakpoint = "🧘", currentpos = "🏃" },
  lsp_gofumpt = true,
  lsp_diag_virtual_text = { space = 0, prefix = "" },
  lsp_diag_signs = true,
})

-- import and fmt on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
