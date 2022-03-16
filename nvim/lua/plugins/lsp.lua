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
--
local on_attach = function(client, bufnr)
    if client.name == "yamlls" then
        client.resolved_capabilities.document_formatting = true
    end
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end
    -- Mappings.
    local opts = { noremap = true, silent = true }
    buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    buf_set_keymap("n", "<C-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    buf_set_keymap("n", "<space>CA", "<cmd>:CodeActionMenu<CR>", opts)
    buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    buf_set_keymap("n", "<space>ld", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
    buf_set_keymap("n", "<space>ql", "<cmd>lua vim.lsp.diagnostic.set_qflist()<CR>", opts)
    buf_set_keymap("n", "<space>ll", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
    buf_set_keymap("n", "<space>fc", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

-- use custom icons
local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " ",
}
--
-- -- lspSymbol("Error", "")
-- -- lspSymbol("Info", "")
-- -- lspSymbol("Hint", "")
-- -- lspSymbol("Warn", "")
--
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

local servers = { "tsserver", "html", "pyright", "bashls", "dockerls" }

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup({
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
    })
end
--
----------------------------------------------------------------------
--                               LUA                                --
----------------------------------------------------------------------
-- nvim_lsp.sumneko_lua.setup({
--     cmd = {
--         "/home/robbyk/tools/lua-language-server/bin/Linux/lua-language-server",
--         "-E",
--         "/home/robbyk/tools/lua-language-server/main.lua",
--     },
--     commands = {
--         Format = {
--             function()
--                 require("stylua-nvim").format_file()
--             end,
--         },
--     },
--     settings = {
--         Lua = {
--             runtime = {
--                 version = "LuaJIT", -- since using mainly for neovim
--                 path = vim.split(package.path, ";"),
--             },
--             diagnostics = { globals = { "vim" } },
--             workspace = {
--                 -- checkThirdParty = false,
--                 -- preloadFileSize = 10000,
--                 -- maxPreload = 10000,
--                 library = {
--                     [vim.fn.expand("$VIMRUNTIME/lua")] = true,
--                     [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
--                 },
--             },
--             telemetry = { enable = false },
--         },
--     },
-- })

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

-- vim.cmd([[
-- augroup lsp
--   autocmd!
--   autocmd BufWritePre * lua require'utils'.auto_format_lsp()
-- augroup END
-- ]])

vim.cmd([[
    augroup Format
      autocmd!
        autocmd BufWritePre *.yaml lua vim.lsp.buf.formatting_sync(nil, 1000)
      augroup END
    ]])
-- vim.cmd [[
--     augroup Format
--       autocmd!
--         autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.graphql lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.html lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.json lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 1000)
--         autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)
--       augroup END
--     ]]

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
-- -- -- nvim_lsp.gopls.setup({
-- -- -- 	on_attach = on_attach,
-- -- -- 	cmd = { "gopls", "serve" },
-- -- -- 	flags = {
-- -- -- 		debounce_text_changes = 150,
-- -- -- 	},
-- -- -- 	capabilities = capabilities,
-- -- -- 	settings = {
-- -- -- 		gopls = {
-- -- -- 			analyses = {
-- -- -- 				unusedparams = true,
-- -- -- 			},
-- -- -- 			staticcheck = true,
-- -- -- 		},
-- -- -- 	},
-- -- -- })
-- -- -- -- nvim_lsp.gopls.setup({
-- -- -- -- 	-- on_attach = on_attach,
-- -- -- -- 	-- capabilities = capabilities,
-- -- -- -- 	-- root_dir = util.root_pattern("go.work", "go.mod", ".git"),
-- -- -- -- 	-- -- single_file_support = true,
-- -- -- -- 	-- -- flags = {
-- -- -- -- 	-- -- 	debounce_text_changes = 150,
-- -- -- -- 	-- -- },
-- -- -- -- 	-- cmd = { "gopls", "serve" },
-- -- -- -- 	-- settings = {
-- -- -- -- 	-- 	gopls = {
-- -- -- -- 	-- 		-- experimentalPostfixCompletions = true,
-- -- -- -- 	-- 		analyses = {
-- -- -- -- 	-- 			unusedparams = true,
-- -- -- -- 	-- 			-- shadow = true,
-- -- -- -- 	-- 		},
-- -- -- -- 	-- 		staticcheck = true,
-- -- -- -- 	-- 	},
-- -- -- -- 	-- },
-- -- -- -- })
-- -- --
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
vim.cmd([[highlight LspDiagnosticsUnderlineWarning guifg=None]])
vim.cmd([[hi! link LspReferenceText CursorColumn]])
vim.cmd([[hi! link LspReferenceRead CursorColumn]])
vim.cmd([[hi! link LspReferenceWrite CursorColumn]])
vim.cmd([[hi! link LspSagaFinderSelection CursorColumn]])
vim.cmd([[hi! link LspSagaDocTruncateLine LspSagaHoverBorder]])
vim.fn.sign_define("LspDiagnosticsSignError", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignWarning", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignInformation", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignHint", { text = "▬" })
