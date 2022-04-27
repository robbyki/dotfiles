local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

null_ls.setup({
  debup = false,
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.shfmt.with({
      extra_args = {
        "-s",
        "-ln",
        "posix",
        "-i",
        "2",
        "-bn",
        "-ci",
        "-sr",
      },
      filetypes = { "sh", "zsh" },
    }),
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettier.with({
      filetypes = { "javascriptreact", "typescriptreact", "javascript", "typescript" },
    }),
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
    end
  end,
})
