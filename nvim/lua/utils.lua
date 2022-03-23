local M = {}

local o_s = vim.o

function M.opt(o, v, scopes)
    scopes = scopes or { o_s }
    for _, s in ipairs(scopes) do
        s[o] = v
    end
end

function M.map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.auto_format_lsp()
    local id, client = next(vim.lsp.buf_get_clients())
    if id ~= nil and client.resolved_capabilities.document_formatting then
        vim.lsp.buf.formatting_sync(nil, 100)
    end
end

return M
