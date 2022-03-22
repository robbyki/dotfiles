local nvim_lsp = require("lspconfig")
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
local on_attach = function(_, bufnr)
    require("lsp_signature").on_attach({ doc_lines = 1 }, bufnr)
    -- local function buf_set_option(...)
    --     vim.api.nvim_buf_set_option(bufnr, ...)
    -- end
    -- buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
    -- Set autocommands conditional on server_capabilities
    -- if client.resolved_capabilities.document_highlight then
    --     vim.api.nvim_exec(
    --         [[
    --         hi LspReferenceText CursorColumn
    --         hi LspReferenceRead CursorColumn
    --         hi LspReferenceWrite CursorColumn
    --   augroup lsp_document_highlight
    --     autocmd! * <buffer>
    --     autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    --     autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    --   augroup END
    -- ]],
    --         false
    --     )
    -- end
end

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
})
vim.lsp.handlers["window/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    border = "rounded",
})

--
-- local on_attach = function(client, bufnr)
--     if client.name == "yamlls" then
--         client.resolved_capabilities.document_formatting = true
--     end
--     -- local function buf_set_keymap(...)
--     vim.api.nvim_buf_set_keymap(bufnr, ...)
-- end
-- local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
-- end
-- Mappings.
-- local opts = { noremap = true, silent = true }
-- buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
-- buf_set_keymap("n", "<C-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
-- buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
-- buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
-- buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
-- buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
-- buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
-- buf_set_keymap("n", "<space>CA", "<cmd>:CodeActionMenu<CR>", opts)
-- buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- buf_set_keymap("n", "<space>ld", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
-- buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
-- buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
-- buf_set_keymap("n", "<space>ql", "<cmd>lua vim.lsp.diagnostic.set_qflist()<CR>", opts)
-- buf_set_keymap("n", "<space>ll", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
-- buf_set_keymap("n", "<space>fc", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
-- end

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
-- dap.adapters.python = {
--     type = "executable",
--     command = "python",
--     args = { "-m", "debugpy.adapter" },
-- }
--

-- require("dap-python").setup("/bin/python3")
-- require("dap-python").test_runner = "pytest"

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

-- use custom icons
local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " ",
    -- Error = " ",
    -- Warn = " ",
    -- Hint = " ",
    -- Info = " ",
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {
        text = icon,
        texthl = hl,
        numhl = hl,
    })
end

vim.diagnostic.config({
    virtual_text = true,
})

local servers = { "bashls", "pyright", "tsserver", "dockerls" }
local lspconfig = require("lspconfig")
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
--                               LUA                                --
----------------------------------------------------------------------
nvim_lsp.sumneko_lua.setup({
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
            diagnostics = { globals = { "vim" } },
            workspace = {
                -- checkThirdParty = false,
                -- preloadFileSize = 10000,
                -- maxPreload = 10000,
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
nvim_lsp.yamlls.setup({
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

----------------------------------------------------------------------
--                               JSON                               --
----------------------------------------------------------------------
nvim_lsp.jsonls.setup({
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
nvim_lsp.util.default_config = vim.tbl_extend("force", nvim_lsp.util.default_config, {
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

-- local lsp_group = api.nvim_create_augroup("lsp", { clear = true })
-- api.nvim_create_autocmd("FileType", {
--     pattern = { "scala", "sbt", "java" },
--     callback = function()
--         require("metals").initialize_or_attach(metals_config)
--     end,
--     group = lsp_group,
-- })

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

-- --
-- --

-- --
-- -- -- -- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- -- -- -- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- -- -- -- lsp_config.util.default_config = vim.tbl_extend("force", lsp_config.util.default_config, {
-- -- -- -- 	handlers = {
-- -- -- -- 		["textDocument/publishDiagnostics"] = shared_diagnostic_settings,
-- -- -- -- 	},
-- -- -- -- 	capabilities = capabilities,
-- -- -- -- })
-- -- -- -- vim.lsp.diagnostic.show_line_diagnostics()
-- -- -- -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- -- -- -- 	virtual_text = false,
-- -- -- -- 	signs = true,
-- -- -- -- 	underline = true,
-- -- -- -- 	update_on_insert = false,
-- -- -- -- })
-- -- -- -- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]])
-- --
-- -- -- -- ----------------------------------------------------------------------
-- -- -- -- --                              RACKET                              --
-- -- -- -- ----------------------------------------------------------------------
-- -- -- -- lsp_config.racket_langserver.setup({})
-- -- -- --
-- -- -- ----------------------------------------------------------------------
-- -- -- --                            JAVASCRIPT                            --
-- -- -- ----------------------------------------------------------------------
-- -- -- -- nvim_lsp.tsserver.setup({
-- -- -- -- 	on_attach = on_attach,
-- -- -- -- 	capabilities = capabilities,
-- -- -- -- 	filetypes = {
-- -- -- -- 		"javascript",
-- -- -- -- 		"javascript.jsx",
-- -- -- -- 		"javascriptreact",
-- -- -- -- 		"typescript",
-- -- -- -- 		"typescriptreact",
-- -- -- -- 		"typescript.tsx",
-- -- -- -- 	},
-- -- -- -- 	init_options = {
-- -- -- -- 		importModuleSpecifierEnding = "auto",
-- -- -- -- 		importModuleSpecifierPreference = "project-relative",
-- -- -- -- 		includePackageJsonAutoImports = "auto",
-- -- -- -- 	},
-- -- -- -- })
-- -- -- --
-- --
--TODO: Create proper golang server settings
-- -- -- ----------------------------------------------------------------------
-- -- -- --                              GOLANG                              --
-- -- -- ----------------------------------------------------------------------
nvim_lsp.gopls.setup({
    -- lsp_cfg = false,
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = require("lspconfig").util.root_pattern(".git", "go.mod", "."),
    flags = {
        debounce_text_changes = 150,
    },
    cmd = { "gopls", "serve" },
    settings = {
        gopls = {
            experimentalPostfixCompletions = true,
            analyses = {
                nilness = true,
                simplifyrange = true,
                unusedwrite = true,
                unusedparams = true,
                shadow = true,
            },
            staticcheck = true,
        },
    },
})
-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
-- -- -- -- function OrgImports(wait_ms)
-- -- -- -- 	local params = vim.lsp.util.make_range_params()
-- -- -- -- 	params.context = { only = { "source.organizeImports" } }
-- -- -- -- 	local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
-- -- -- -- 	for _, res in pairs(result or {}) do
-- -- -- -- 		for _, r in pairs(res.result or {}) do
-- -- -- -- 			if r.edit then
-- -- -- -- 				vim.lsp.util.apply_workspace_edit(r.edit, "utf-16")
-- -- -- -- 			else
-- -- -- -- 				vim.lsp.buf.execute_command(r.command)
-- -- -- -- 			end
-- -- -- -- 		end
-- -- -- -- 	end
-- -- -- -- end
-- -- -- -- vim.cmd([[ autocmd BufWritePre *.go lua OrgImports(1000) ]])
-- -- -- -- vim.cmd([[ autocmd BufWritePre *.go lua vim.lsp.buf.formatting() ]])
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

-- Go
-- vim.g.go_term_enabled = true
-- vim.g.go_term_mode = "split"
