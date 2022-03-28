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

function M.mkdir()
    local dir = vim.api.nvim_buf_get_name(0)
    d = dir:match("(.*/)")
    local ok, err, code = os.rename(d, d)
    if not ok then
        if code == 13 then
            return
        end
    end
    if ok then
        return
    end
    print("Create missing directory? (y)")
    vim.api.nvim_command("let b:conf = nr2char(getchar())")
    local conf = vim.api.nvim_buf_get_var(0, "conf")
    if conf == "y" then
        os.execute("mkdir -p " .. d)
    else
        return
    end
end
vim.api.nvim_command("command! Mkdir lua mkdir()")

-- function M.auto_format_lsp()
--     local id, client = next(vim.lsp.buf_get_clients())
--     if id ~= nil and client.resolved_capabilities.document_formatting then
--         vim.lsp.buf.formatting_sync(nil, 100)
--     end
-- end

return M
