local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

null_ls.setup({
    debug = false,
    sources = {
        null_ls.builtins.formatting.shfmt.with({ extra_args = { "-i", "2", "-ci", "-bn" } }),
        null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.json_tool,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.diagnostics.zsh,
        -- null_ls.builtins.formatting.prettier,
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
