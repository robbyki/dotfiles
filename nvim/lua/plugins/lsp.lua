local api = vim.api

vim.cmd([[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]])
vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]])

local lspconfig = require("lspconfig")
local lsp_signature = require("lsp_signature")
local dap = require("dap")

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    "documentation",
    "detail",
    "additionalTextEdits",
  },
}
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local function on_attach(client, bufnr) -- function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  -- show / edit actions
  vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "]l", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "[l", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "<leader>lca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("v", "<leader>lca", vim.lsp.buf.range_code_action, opts)

  -- listup actions
  vim.keymap.set("n", "<leader>llr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>lls", vim.lsp.buf.document_symbol, opts)
  vim.keymap.set("n", "<leader>llS", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>llc", vim.lsp.buf.incoming_calls, opts)
  vim.keymap.set("n", "<leader>llC", vim.lsp.buf.outgoing_calls, opts)
  vim.keymap.set("n", "<leader>lld", vim.diagnostic.setqflist, opts)

  -- show diagnostics
  -- vim.keymap.set("n", "<leader>lll", function()
  --   vim.diagnostic.open_float({ scope = "cursor" })
  -- end, opts)

  vim.api.nvim_create_autocmd("CursorHold", {
    buffer = bufnr,
    callback = function()
      local diagnostics_opts = {
        focusable = false,
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        border = "rounded",
        source = "always", -- show source in diagnostic popup window
        prefix = " ",
      }
      vim.diagnostic.open_float(nil, diagnostics_opts)
    end,
  })

  -- Set autocommands conditional on server_capabilities
  if client.server_capabilities.documentHighlightProvider then
    vim.api.nvim_set_hl(0, "LspReferenceRead", { underline = true, bold = true })
    vim.api.nvim_set_hl(0, "LspReferenceText", { underline = true })
    vim.api.nvim_set_hl(0, "LspReferenceWrite", { reverse = true })
    local group = vim.api.nvim_create_augroup("lsp_document_highlight", { clear = false })
    vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })
    vim.api.nvim_create_autocmd(
      "CursorHold",
      { group = group, buffer = bufnr, callback = vim.lsp.buf.document_highlight }
    )
    vim.api.nvim_create_autocmd(
      "CursorMoved",
      { group = group, buffer = bufnr, callback = vim.lsp.buf.clear_references }
    )
  end
end

local signs = {
  Error = "",
  Warn = "",
  Hint = "",
  Info = "",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

lsp_signature.setup({
  bind = true,
  doc_lines = 7,
  floating_window = false,
  fix_pos = false,
  hint_enable = true,
  hint_prefix = "🦄 ",
  hint_scheme = "String",
  hi_parameter = "Search",
  max_height = 22,
  max_width = 120,
  handler_opts = {
    border = "rounded",
  },
})

vim.diagnostic.config({
  underline = true,
  signs = true,
  virtual_text = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    format = function(d)
      local t = vim.deepcopy(d)
      local code = d.code or (d.user_data and d.user_data.lsp.code)
      if code then
        t.message = string.format("%s [%s]", t.message, code):gsub("1. ", "")
      end
      return t.message
    end,
  },
})

--TODO: this needs to move to autocmds dedicated file soon
vim.cmd([[
    augroup Format
      autocmd!
        autocmd BufWritePre *.yaml lua vim.lsp.buf.formatting_sync(nil, 1000)
      augroup END
    ]])

----------------------------------------------------------------------
--                     Begin Language Settings                      --
----------------------------------------------------------------------

----------------------------------------------------------------------
--                         Language Servers                         --
----------------------------------------------------------------------
local servers = { "tsserver", "dockerls", "pyright" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    opts = {
      inlay_hints = {
        show_parameter_hints = true,
        parameter_hints_prefix = "",
        other_hints_prefix = "",
      },
      flags = {
        debounce_text_changes = 150,
      },
    },
  })
end

----------------------------------------------------------------------
--                               Lua                                --
----------------------------------------------------------------------

lspconfig.sumneko_lua.setup({
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
  cmd = {
    "/home/robbyk/tools/lua-language-server/bin/Linux/lua-language-server",
    "-E",
    "/home/robbyk/tools/lua-language-server/main.lua",
  },
  commands = {
    Format = {
      function()
        require("stylua-nvim").format_file()
      end,
    },
  },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- since using mainly for neovim
        path = vim.split(package.path, ";"),
      },
      diagnostics = { globals = { "vim", "it", "describe", "before_each" } },
      workspace = {
        checkThirdParty = false,
        preloadFileSize = 10000,
        maxPreload = 10000,
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
        },
      },
      telemetry = { enable = false },
    },
  },
})

----------------------------------------------------------------------
--                               YAML                               --
----------------------------------------------------------------------
lspconfig.yamlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "yml", "yaml", "yaml.docker-compose", "config" },
  settings = {
    yaml = {
      format = { enable = true },
      editor = { formatOnType = true },
      validate = false,
      schemaDownload = { enable = true },
      completion = true,
      hover = true,
      schemas = {
        ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
        ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
        ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
        ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
        ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
        ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
        ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
        ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
        ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
        ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose.{yml,yaml}",
        ["https://raw.githubusercontent.com/robbyki/schemas/1f05c98df4ca8398f502f554734ff5e87acfcc4c/openshift/all.json"] = "/*.yaml",
        kubernetes = { "/*.yaml" },
      },
    },
  },
})

----------------------------------------------------------------------
--                               JSON                               --
----------------------------------------------------------------------
lspconfig.jsonls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  commands = {
    Format = {
      function()
        vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
      end,
    },
  },
})

----------------------------------------------------------------------
--                              SCALA                               --
----------------------------------------------------------------------
local metals_config = require("metals").bare_config()
metals_config.settings = {
  showImplicitArguments = true,
  showInferredType = true,
  excludedPackages = {
    "akka.actor.typed.javadsl",
    "com.github.swagger.akka.javadsl",
    "akka.stream.javadsl",
  },
  superMethodLensesEnabled = true,
  -- serverProperties = {"-Xmx3G", "-Xms3G", "-Xss4m"},
}

metals_config.init_options.statusBarProvider = "on"
metals_config.capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

dap.configurations.scala = {
  {
    type = "scala",
    request = "launch",
    name = "RunOrTest",
    metals = {
      runType = "runOrTestFile",
      --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
    },
  },
  {
    type = "scala",
    request = "launch",
    name = "Test Target",
    metals = {
      runType = "testTarget",
    },
  },
}

metals_config.on_attach = function(client, bufnr)
  require("metals").setup_dap()
end

-- Autocmd that will actually be in charging of starting the whole thing
local nvim_metals_group = api.nvim_create_augroup("nvim-metals", { clear = true })
api.nvim_create_autocmd("FileType", {
  pattern = { "scala", "sbt" },
  callback = function()
    require("metals").initialize_or_attach(metals_config)
  end,
  group = nvim_metals_group,
})

----------------------------------------------------------------------
--                              GOLANG                              --
----------------------------------------------------------------------
lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "go", "gomod" },
  root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
  flags = { allow_incremental_sync = true, debounce_text_changes = 150 },
  cmd = { "gopls", "serve" },
  settings = {
    gopls = {
      analyses = {
        nilness = true, -- check for redundant or impossible nil comparisons
        shadow = true, -- check for possible unintended shadowing of variables
        unusedparams = true, -- check for unused parameters of functions
        unusedwrite = true, -- checks for unused writes, an instances of writes to struct fields and arrays that are never read
      },
      codelenses = {
        gc_details = true, -- Toggle the calculation of gc annotations
        generate = true, -- Runs go generate for a given directory
        regenerate_cgo = true, -- Regenerates cgo definitions
        tidy = true, -- Runs go mod tidy for a module
        upgrade_dependency = true, -- Upgrades a dependency in the go.mod file for a module
        vendor = true, -- Runs go mod vendor for a module
      },
      usePlaceholders = true,
      semanticTokens = true,
      completeUnimported = true,
      staticcheck = true,
      experimentalWatchedFileDelay = "100ms",
      gofumpt = true,
      -- buildFlags = { "-tags", "integration", "-buildvcs=false" },
      experimentalPostfixCompletions = true,
      experimentalUseInvalidMetadata = true,
    },
  },
})

----------------------------------------------------------------------
--                            JAVASCRIPT                            --
----------------------------------------------------------------------
lspconfig.tsserver.setup({
  capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
  end,
})

vim.cmd([[
    augroup Format
      autocmd!
        autocmd BufWritePre *.scala lua vim.lsp.buf.formatting_sync(nil, 1000)
        autocmd BufWritePre *.json lua vim.lsp.buf.formatting_sync(nil, 1000)
      augroup END
    ]])
-- autocmd BufWritePre *.graphql lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.html lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.json lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)

--
-- dap.adapters.python = {
--   type = "executable",
--   command = "/bin/python",
--   args = {
--     "-m",
--     "debugpy.adapter",
--   },
-- }

----------------------------------------------------------------------
--                           Debug Python                           --
----------------------------------------------------------------------
dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = "launch",
    name = "Launch file",

    program = "${file}", -- This configuration will launch the current file if used.
    pythonPath = function()
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
        return cwd .. "/venv/bin/python"
      elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
        return cwd .. "/.venv/bin/python"
      else
        return "/usr/bin/python"
      end
    end,
  },
}

-- dap.adapters.go = function(callback, config)
--     local stdout = vim.loop.new_pipe(false)
--     local handle
--     local pid_or_err
--     local port = 38697
--     local opts = {
--         stdio = { nil, stdout },
--         args = { "dap", "-l", "127.0.0.1:" .. port },
--         detached = true,
--     }
--     handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
--         stdout:close()
--         handle:close()
--         if code ~= 0 then
--             print("dlv exited with code", code)
--         end
--     end)
--     assert(handle, "Error running dlv: " .. tostring(pid_or_err))
--     stdout:read_start(function(err, chunk)
--         assert(not err, err)
--         if chunk then
--             vim.schedule(function()
--                 require("dap.repl").append(chunk)
--             end)
--         end
--     end)
--     -- Wait for delve to start
--     vim.defer_fn(function()
--         callback({ type = "server", host = "127.0.0.1", port = port })
--     end, 100)
-- end
--
-- dap.configurations.go = {
--     {
--         type = "go",
--         name = "Debug",
--         request = "launch",
--         program = "${file}",
--     },
--     {
--         type = "go",
--         name = "Debug test", -- configuration for debugging test files
--         request = "launch",
--         mode = "test",
--         program = "${file}",
--     },
--     -- works with go.mod packages and sub packages
--     {
--         type = "go",
--         name = "Debug test (go.mod)",
--         request = "launch",
--         mode = "test",
--         program = "./${relativeFileDirname}",
--     },
-- }
-- }}}

-- dap.configurations.python = {
--     {
--         type = "python",
--         request = "attach",
--         name = "Launch file",
--         program = "${file}",
--         console = "internalConsole",
--         autoReload = { enable = true },
--         pythonPath = "/bin/python3",
--     },
--     {
--         type = "python",
--         request = "attach",
--         name = "Pytest file",
--         program = "-m pytest ${file}",
--         console = "externalTerminal",
--         pythonPath = "/bin/python3",
--     },
--     {
--         type = "python",
--         request = "launch",
--         name = "Launch file",
--         program = "${file}",
--         console = "internalConsole",
--         pythonPath = "/bin/python3",
--     },
-- }
-- function goimports(timeout_ms)
--   local context = { source = { organizeImports = true } }
--   vim.validate({ context = { context, "t", true } })
--
--   local params = vim.lsp.util.make_range_params()
--   params.context = context
--
--   -- See the implementation of the textDocument/codeAction callback
--   -- (lua/vim/lsp/handler.lua) for how to do this properly.
--   local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
--   if result == nil or result[1] == nil or not result or next(result) == nil then
--     return
--   end
--   local actions = result[1].result
--   if not actions then
--     return
--   end
--   local action = actions[1]
--   -- print(vim.inspect(action))
--
--   -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
--   -- is a CodeAction, it can have either an edit, a command or both. Edits
--   -- should be executed first.
--   if action.edit or type(action.command) == "table" then
--     if action.edit then
--       if action.kind == "source.organizeImports" then
--         vim.lsp.util.apply_workspace_edit(action.edit, "utf-16")
--       end
--     end
--     if type(action.command) == "table" then
--       if action.command.arguments[1].Fix == "fill_struct" then
--         return
--       end
--       print(vim.inspect(action))
--       -- vim.lsp.buf.execute_command(action.command)
--     end
--   else
--     if action.arguments[1].Fix == "fill_struct" then
--       return
--     end
--     print(vim.inspect(action))
--     -- vim.lsp.buf.execute_command(action)
--   end
-- end
--
-- vim.api.nvim_command("autocmd BufWritePre *.go lua goimports(1000)")
-- vim.api.nvim_command("autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)")
-- vim.api.nvim_command("autocmd BufWritePre go.mod lua vim.lsp.buf.formatting_sync(nil, 1000)")
-- vim.api.nvim_command("autocmd BufWritePost *.go lua vim.lsp.codelens.refresh()")
