local M = {}

local o_s = vim.o
local cmd = vim.cmd

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

function M.create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    cmd("augroup " .. group_name)
    cmd("autocmd!")
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
      cmd(command)
    end
    cmd("augroup END")
  end
end

-- The last saved date is saved into `XDG_CACHE_HOME/.plugins_updated_at`.
function M.update_plugins_every_day()
  local plugin_updated_at_filename = vim.env.HOME .. "/.config/.plugins_updated_at"
  local file = io.open(plugin_updated_at_filename)
  if not file then
    vim.fn.writefile({}, plugin_updated_at_filename)
    file:close()
  end
  local today = os.date("%Y-%m-%d")
  file = io.open(plugin_updated_at_filename)
  local contents = file:read("*a")
  if contents ~= today then
    vim.fn.execute("PackerUpdate")

    file = io.open(plugin_updated_at_filename, "w")
    file:write(today)
  end
  file:close()
end

-- Create non existent directories when vim passed a filepath
function M.MkNonExDir(file, buf)
  -- only do it for normal buffers (not terminals etc)
  buftype = vim.fn.getbufvar(buf, "&buftype")
  -- also only do it for local files, not scp:// etc
  if buftype == "" and not string.find(file, "^[a-zA-Z]+:") then
    dir = vim.fn.fnamemodify(file, ":h")
    isdir = vim.fn.isdirectory(dir)
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end
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
