local lspconfig = require("lspconfig")
local lsp_status = require("lsp-status")
local lsp_signature = require("lsp_signature")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local null_ls = require("null-ls")
local dap = require("dap")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        "documentation",
        "detail",
        "additionalTextEdits",
    },
}
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    local opts = { noremap = true, silent = true }

    buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    buf_set_keymap("n", "<space>b", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
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

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
})
vim.lsp.handlers["window/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    border = "rounded",
    virtual_text = {
        prefix = "●",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
})
lsp_status.register_progress()

-- use custom icons
vim.diagnostic.config({
    virtual_text = true,
})
----------------------------------------------------------------------
--                         Language Servers                         --
----------------------------------------------------------------------
local servers = { "bashls", "tsserver", "dockerls" }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
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
    on_attach = on_attach,
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
        },
    },
})

-- lspconfig.yamlls.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "yml", "yaml", "yaml.docker-compose", "config" },
--   settings = {
--     yaml = {
--       format = { enable = true },
--       editor = { formatOnType = true },
--       validate = false,
--       schemaDownload = { enable = true },
--       completion = true,
--       hover = true,
--       schemas = {
--         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
--         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
--         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
--         ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
--         ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
--         ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
--         ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
--         ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
--         ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
--         ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
--         ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose.{yml,yaml}",
--         ["https://raw.githubusercontent.com/robbyki/schemas/1f05c98df4ca8398f502f554734ff5e87acfcc4c/openshift/all.json"] = "/*.yaml",
--         kubernetes = { "/*.yaml" },
--       },
--     },
--   },
-- })

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

vim.cmd([[
    augroup Format
      autocmd!
        autocmd BufWritePre *.yaml lua vim.lsp.buf.formatting_sync(nil, 1000)
      augroup END
    ]])

----------------------------------------------------------------------
--                              SCALA                               --
----------------------------------------------------------------------
local shared_diagnostic_settings = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })
lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
    handlers = {
        ["textDocument/publishDiagnostics"] = shared_diagnostic_settings,
    },
    capabilities = cmp_nvim_lsp.update_capabilities(capabilities),
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
Metals_config.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)
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
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = lspconfig.util.root_pattern(".git", "go.mod", "go.work"),
    flags = {
        debounce_text_changes = 150,
    },
    cmd = { "gopls", "serve" },
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                unreachable = true,
                nilness = true,
            },
            codelenses = {
                generate = true,
                gc_details = true,
                test = true,
                tidy = true,
            },
            usePlaceholders = true,
            semanticTokens = true,
            completeUnimported = true,
            staticcheck = true,
            matcher = "Fuzzy",
            diagnosticsDelay = "500ms",
            experimentalWatchedFileDelay = "100ms",
            gofumpt = false,
            buildFlags = { "-tags", "integration" },
            experimentalPostfixCompletions = true,
            experimentalUseInvalidMetadata = true,
        },
    },
})
-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

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
    on_attach = on_attach,
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

-- vim.cmd([[
--     augroup Format
--       autocmd!
--         autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)
--       augroup END
--     ]])
-- autocmd BufWritePre *.graphql lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.html lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.json lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 1000)
-- autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)

--- LSP
vim.cmd([[hi! LspDiagnosticsUnderlineWarning guifg=None]])
vim.cmd([[hi! link LspReferenceText CursorColumn]])
vim.cmd([[hi! link LspReferenceRead CursorColumn]])
vim.cmd([[hi! link LspReferenceWrite CursorColumn]])
vim.cmd([[hi! link LspSagaFinderSelection CursorColumn]])
vim.cmd([[hi! link LspSagaDocTruncateLine LspSagaHoverBorder]])
vim.fn.sign_define("LspDiagnosticsSignError", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignWarning", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignInformation", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignHint", { text = "▬" })

--todo: need to get dap out of here at some point soon
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

-- dap.configurations.python = {
--     -- {
--     --     type = "python",
--     --     request = "attach",
--     --     name = "Launch file",
--     --     program = "${file}",
--     --     console = "internalConsole",
--     --     autoReload = { enable = true },
--     --     pythonPath = "/bin/python3",
--     -- },
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
--
-- dap.configurations.python = {
--     {
--         type = "python",
--         request = "launch",
--         name = "Debug file",
--         program = "${file}",
--         pythonPath = "python",
--     },
--     {
--         type = "python",
--         request = "launch",
--         name = "Debug tests",
--         module = "pytest",
--     },
-- }
