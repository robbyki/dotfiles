local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

local builtins = null_ls.builtins
local formatting = builtins.formatting
-- local null_ls = require("null-ls")
-- local diagnostics = builtins.diagnostics
-- local code_actions = builtins.code_actions

null_ls.setup({
    debug = false,
    sources = {
        formatting.shfmt.with({ extra_args = { "-i", "2", "-ci", "-bn" } }),
        formatting.prettier,
        formatting.black.with({ extra_args = { "--fast" } }),
        formatting.stylua,
        formatting.json_tool,
        -- formatting.scalafmt,
        -- formatting.gofmt,
        -- formatting.goimports,
        -- null_ls.builtins.formatting.prettier.with({
        -- 	extra_filetypes = { "scala, sbt" },
        -- }),
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
