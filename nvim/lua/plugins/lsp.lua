local M = {}

-- local api = vim.api
local lspconfig = require("lspconfig")
local lsp_signature = require("lsp_signature")
local dap = require("dap")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    virtual_text = true,
    update_in_insert = true,
})

----------------------------------------------------------------------
--                            Signature                             --
----------------------------------------------------------------------
lsp_signature.setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
        border = "rounded",
    },
    hint_prefix = "🦄 ",
    floating_window_above_cur_line = true,
    hint_enable = false,
    toggle_key = "<C-x>",
})

----------------------------------------------------------------------
--                             Handlers                             --
----------------------------------------------------------------------
local function lsp_highlight_document(client)
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
            [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
            false
        )
    end
end

local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " ",
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {
        text = icon,
        texthl = hl,
        numhl = hl,
    })
end

function M.show_line_diagnostics()
    local opts = {
        focusable = false,
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        border = "none",
        source = "always", -- show source in diagnostic popup window
        prefix = " ",
    }
    vim.diagnostic.open_float(nil, opts)
end
vim.cmd([[ autocmd CursorHold <buffer> lua require('plugins.lsp').show_line_diagnostics() ]])

-- Change diagnostic signs.
-- vim.fn.sign_define("DiagnosticSignError", { text = "✗", texthl = "DiagnosticSignError" })
-- vim.fn.sign_define("DiagnosticSignWarn", { text = "!", texthl = "DiagnosticSignWarn" })
-- vim.fn.sign_define("DiagnosticSignInformation", { text = "", texthl = "DiagnosticSignInfo" })
-- vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
})

-- global config for diagnostic
vim.diagnostic.config({
    underline = true,
    virtual_text = true,
    signs = true,
    severity_sort = true,
    float = { border = "single" },
})

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local custom_attach = function(client, _)
    lsp_highlight_document(client)
    if client.resolved_capabilities.document_highlight then
        vim.cmd([[
      hi! link LspReferenceRead Visual
      hi! link LspReferenceText Visual
      hi! link LspReferenceWrite Visual
      " augroup lsp_document_highlight
      "   autocmd! * <buffer>
      "   autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
      "   autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      " augroup END
    ]])
    end

    if vim.g.logging_level == "debug" then
        local msg = string.format("Language server %s started!", client.name)
        vim.notify(msg, "info", { title = "Nvim-config" })
    end
end

--TODO: this needs to move to autocmds dedicated file soon
vim.cmd([[
    augroup Format
      autocmd!
        autocmd BufWritePre *.yaml lua vim.lsp.buf.formatting_sync(nil, 1000)
      augroup END
    ]])

----------------------------------------------------------------------
--                               Lua                                --
----------------------------------------------------------------------
lspconfig.sumneko_lua.setup({
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
--                         Language Servers                         --
----------------------------------------------------------------------
local servers = { "bashls", "tsserver", "dockerls" }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = custom_attach,
        -- capabilities = Capabilities,
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
--                              Python                              --
----------------------------------------------------------------------
lspconfig.pyright.setup({
    on_attach = custom_attach,
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                typeCheckingMode = "off",
                useLibraryCodeForTypes = true,
            },
        },
    },
})

----------------------------------------------------------------------
--                               YAML                               --
----------------------------------------------------------------------
lspconfig.yamlls.setup({
    on_attach = custom_attach,
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
    on_attach = custom_attach,
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
--todo: this must need a nice redo and update
local shared_diagnostic_settings = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })
require("lspconfig").util.default_config = vim.tbl_extend("force", require("lspconfig").util.default_config, {
    handlers = {
        ["textDocument/publishDiagnostics"] = shared_diagnostic_settings,
    },
    capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities),
})
Metals_config = require("metals").bare_config()
Metals_config.settings = {
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
Metals_config.init_options.statusBarProvider = "on"
Metals_config.init_options.compilerOptions.isCompletionItemResolve = false
Metals_config.handlers["textDocument/publishDiagnostics"] = shared_diagnostic_settings
Metals_config.capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
Metals_config.on_attach = function(_, _)
    vim.cmd([[autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()]])
    vim.cmd([[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]])
    vim.cmd([[autocmd BufEnter,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()]])
    require("metals").setup_dap()
end
vim.cmd([[autocmd FileType scala,sbt lua require("metals").initialize_or_attach(Metals_config)]])

----------------------------------------------------------------------
--                              GOLANG                              --
----------------------------------------------------------------------
lspconfig.gopls.setup({
    on_attach = custom_attach,
    -- on_attach = function(client)
    --     client.resolved_capabilities.document_formatting = false
    --     client.resolved_capabilities.document_range_formatting = false
    -- end,
    capabilities = capabilities,
    filetypes = { "go", "gomod" },
    root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
    flags = { allow_incremental_sync = true, debounce_text_changes = 150 },
    cmd = { "gopls", "serve" },
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                unreachable = true,
                nilness = true,
            },
            codelenses = {
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
                generate = true,
                gc_details = true,
            },
            usePlaceholders = true,
            semanticTokens = true,
            completeUnimported = true,
            staticcheck = true,
            matcher = "Fuzzy",
            diagnosticsDelay = "500ms",
            experimentalWatchedFileDelay = "100ms",
            gofumpt = false,
            buildFlags = { "-tags", "integration", "-buildvcs=false" },
            experimentalPostfixCompletions = true,
            experimentalUseInvalidMetadata = true,
        },
    },
})

-- function OrgImports(wait_ms)
--   local params = vim.lsp.util.make_range_params()
--   params.context = { only = { "source.organizeImports" } }
--   local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
--   for _, res in pairs(result or {}) do
--     for _, r in pairs(res.result or {}) do
--       if r.edit then
--         vim.lsp.util.apply_workspace_edit(r.edit)
--       else
--         vim.lsp.buf.execute_command(r.command)
--       end
--     end
--   end
-- end
-- vim.cmd([[ autocmd BufWritePre *.go lua OrgImports(1000) ]])

----------------------------------------------------------------------
--                            JAVASCRIPT                            --
----------------------------------------------------------------------
lspconfig.tsserver.setup({
    on_attach = custom_attach,
    capabilities = capabilities,
    filetypes = {
        "javascript",
        "javascript.jsx",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
    },
    init_options = {
        importModuleSpecifierEnding = "auto",
        importModuleSpecifierPreference = "project-relative",
        includePackageJsonAutoImports = "auto",
    },
})

vim.cmd([[
    augroup Format
      autocmd!
        autocmd BufWritePre *.scala lua vim.lsp.buf.formatting_sync(nil, 1000)
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

----------------------------------------------------------------------
--                           Debug Scala                            --
----------------------------------------------------------------------
dap.configurations.scala = {
    {
        type = "scala",
        request = "launch",
        name = "Run",
        metals = {
            runType = "run",
        },
    },
    {
        type = "scala",
        request = "launch",
        name = "Test File",
        metals = {
            runType = "testFile",
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

dap.adapters.python = {
    type = "executable",
    command = "/bin/python",
    args = {
        "-m",
        "debugpy.adapter",
    },
}

----------------------------------------------------------------------
--                           Debug Python                           --
----------------------------------------------------------------------
dap.configurations.python = {
    {
        -- The first three options are required by nvim-dap
        type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
        request = "launch",
        name = "Launch file",

        -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

        program = "${file}", -- This configuration will launch the current file if used.
        pythonPath = function()
            -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
            -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
            -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
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

return M
-- ==============================================================================
-- dap {{{
-- ==============================================================================
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
