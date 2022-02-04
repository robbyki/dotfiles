local lspconfig = require("lspconfig")
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
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
}

Metals_config.init_options.statusBarProvider = "on"
Metals_config.init_options.compilerOptions.isCompletionItemResolve = false
Metals_config.handlers["textDocument/publishDiagnostics"] = shared_diagnostic_settings
Metals_config.capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local dap = require("dap")

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

Metals_config.on_attach = function(client, bufnr)
    vim.cmd([[autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()]])
    vim.cmd([[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]])
    vim.cmd([[autocmd BufEnter,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()]])
    require("metals").setup_dap()
end
-- sumneko lua
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

lspconfig.bashls.setup({ on_attach = on_attach, filetypes = { "sh", "zsh" } })
lspconfig.pyright.setup({ on_attach = on_attach, capabilities = capabilities })
lspconfig.dockerls.setup({})
lspconfig.html.setup({})
lspconfig.jsonls.setup({
    commands = {
        Format = {
            function()
                vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
            end,
        },
    },
})
lspconfig.tsserver.setup({
    flags = flags,
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
lspconfig.yamlls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "yml", "yaml", "yaml.docker-compose", "config" },
    settings = {
        yaml = {
            schemaStore = {
                enable = true,
                url = "https://www.schemastore.org/api/json/catalog.json",
            },
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
                -- ["https://raw.githubusercontent.com/robbyki/dotfiles/main/schemas/all.json"] = "/*.yaml",
                ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.23.1-standalone-strict/all.json"] = "/*.yaml",
                kubernetes = "/*.yaml",
            },
            format = { enabled = true },
            validate = false, -- TODO: conflicts between Kubernetes resources and kustomization.yaml
            completion = true,
            hover = true,
        },
    },
})
lspconfig.racket_langserver.setup({})
lspconfig.gopls.setup({
    settings = {
        gopls = {
            analyses = { unusedparams = true, shadow = true },
            staticcheck = true,
            experimentalPostfixCompletions = true,
        },
    },
    init_options = { usePlaceholders = true, completeUnimported = true },
    on_attach = on_attach,
    capabilities = capabilities,
    flags = flags,
})
-- lsp_config.gopls.setup({
--     on_attach = on_attach,
--     capabilities = capabilities,
--     settings = {
--         gopls = {
--             buildFlags = { "-tags=wireinject" },
--             usePlaceholders = true,
--             codelenses = {
--                 gc_details = true,
--                 generate = true,
--                 regenerate_cgo = true,
--                 tidy = true,
--                 upgrade_dependency = true,
--                 vendor = true,
--                 nilness = true,
--             },
--             analyses = {
--                 fillreturns = true,
--                 nonewvars = true,
--                 shadow = true,
--                 undeclaredname = true,
--                 unreachable = true,
--                 unusedparams = true,
--                 unusedwrite = true,
--             },
--             gofumpt = true,
--             ["local"] = "go.ngrok.com",
--             staticcheck = true,
--         },
--     },
--     flags = {
--         debounce_text_changes = 200,
--     },
-- })

-- LSP Prevents inline buffer annotations
vim.lsp.diagnostic.show_line_diagnostics()
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    underline = true,
    update_on_insert = false,
})

local signs = {
    Error = "ﰸ",
    Warn = "",
    Hint = "",
    Info = "",
}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = nil })
end

vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]])
