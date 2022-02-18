local shared_diagnostic_settings = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })
local lsp_config = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp_config.util.default_config = vim.tbl_extend("force", lsp_config.util.default_config, {
    handlers = {
        ["textDocument/publishDiagnostics"] = shared_diagnostic_settings,
    },
    capabilities = capabilities,
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
lsp_config.sumneko_lua.setup({
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

lsp_config.bashls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "bash", "sh", "zsh" },
})

require("lspconfig").pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    -- settings = {
    --     pyls = {
    --         plugins = {
    --             pycodestyle = { enabled = false },
    --             pylint = { enabled = false },
    --             black = { enabled = true },
    --             pyflakes = { enabled = false },
    --         },
    --     },
    -- },
})

require("lspconfig").dockerls.setup({
    cmd = { "docker-langserver", "--stdio" },
    filetypes = { "dockerfile" },
    single_file_support = true,
    capabilities = capabilities,
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
})

lsp_config.html.setup({})
lsp_config.jsonls.setup({
    handlers = handlers,
    flags = flags,
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
lsp_config.tsserver.setup({
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
lsp_config.yamlls.setup({
    handlers = handlers,
    flags = flags,
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "yml", "yaml", "yaml.docker-compose", "config" },
    settings = {
        yaml = {
            format = { enable = true },
            validate = false,
            schemaDownload = { enable = true },
            completion = true,
            hover = true,
            -- editor = { formatOnType = true },
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
lsp_config.racket_langserver.setup({})

lsp_config.gopls.setup({
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

-- require("lsp_signature").setup({
--     debug = false, -- set to true to enable debug logging
--     log_path = vim.fn.stdpath("cache") .. "/lsp_signature.log", -- log dir when debug is on
--     verbose = false, -- show debug line number
--     bind = true, -- This is mandatory, otherwise border config won't get registered.
--     doc_lines = 10, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
--     floating_window_above_cur_line = true, -- try to place the floating above the current line when possible.
--     floating_window_off_x = 1, -- adjust float windows x position.
--     floating_window_off_y = 1, -- adjust float windows y position.
--     fix_pos = false, -- set to true, the floating window will not auto-close until finish all parameters
--     hint_enable = false, -- virtual hint enable
--     max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
--     -- to view the hiding contents
--     max_width = 80, -- max_width of signature floating_window, line will be wrapped if exceed max_width
--     handler_opts = {
--         border = "rounded", -- double, rounded, single, shadow, none
--     },
--     always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58
--     auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
--     extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
--     zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom
--     padding = " ", -- character to pad on left and right of signature can be ' ', or '|'  etc
--     -- transparency = nil, -- disabled by default, allow floating win transparent value 1~100
--     shadow_blend = 36, -- if you using shadow as border use this set the opacity
--     -- shadow_guibg = "Black", -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
--     timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
--     toggle_key = nil, -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
-- })
