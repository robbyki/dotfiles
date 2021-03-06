local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

null_ls.setup({
  debup = false,
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.shfmt.with({
      filetypes = { "sh", "zsh" },
      extra_args = { "-i", "2", "-bn", "-sr", "-ci" },
    }),
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.shellcheck.with({
      diagnostics_format = "[#{c}] #{m}",
      filetypes = { "sh", "zsh" },
    }),
    null_ls.builtins.code_actions.shellcheck.with({
      filetypes = { "sh", "zsh" },
    }),
    null_ls.builtins.formatting.prettier.with({
      filetypes = { "javascriptreact", "typescriptreact", "javascript", "typescript" },
    }),
    -- cannot understand dlt sql from databricks code yet
    -- null_ls.builtins.formatting.sqlfluff.with({
    --   extra_args = { "--dialect", "sparksql" },
    -- }),
    -- a bit too noisy right now
    -- null_ls.builtins.diagnostics.sqlfluff.with({
    --   extra_args = { "--dialect", "sparksql" },
    -- }),
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
            augroup END
            ]])
    end
  end,
})
