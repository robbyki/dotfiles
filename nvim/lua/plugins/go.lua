require("go").setup({
  run_in_floaterm = true,
  gofmt = "gofumpt",
  lsp_codelens = true,
  lsp_diag_virtual_text = true,
  max_line_len = 120, -- max line length in goline format
})

-- Format on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]], false)
-- Import on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
