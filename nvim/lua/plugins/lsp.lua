--TODO: Fix all of the scala metals confg
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- lsp_config.util.default_config = vim.tbl_extend("force", lsp_config.util.default_config, {
-- 	handlers = {
-- 		["textDocument/publishDiagnostics"] = shared_diagnostic_settings,
-- 	},
-- 	capabilities = capabilities,
-- })
-- vim.lsp.diagnostic.show_line_diagnostics()
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- 	virtual_text = false,
-- 	signs = true,
-- 	underline = true,
-- 	update_on_insert = false,
-- })
-- local signs = {
-- 	Error = "ﰸ",
-- 	Warn = "",
-- 	Hint = "",
-- 	Info = "",
-- }
-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]])
--
-- ----------------------------------------------------------------------
-- --                               BASH                               --
-- ----------------------------------------------------------------------
-- lsp_config.bashls.setup({
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- 	filetypes = { "bash", "sh", "zsh" },
-- })
--
-- ----------------------------------------------------------------------
-- --                              PYTHON                              --
-- ----------------------------------------------------------------------
-- require("lspconfig").pyright.setup({
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- })
--
-- ----------------------------------------------------------------------
-- --                              DOCKER                              --
-- ----------------------------------------------------------------------
-- require("lspconfig").dockerls.setup({
-- 	cmd = { "docker-langserver", "--stdio" },
-- 	filetypes = { "dockerfile" },
-- 	single_file_support = true,
-- 	capabilities = capabilities,
-- 	on_attach = on_attach,
-- 	flags = {
-- 		debounce_text_changes = 150,
-- 	},
-- })
--
-- ----------------------------------------------------------------------
-- --                               HTML                               --
-- ----------------------------------------------------------------------
-- lsp_config.html.setup({})
--
-- ----------------------------------------------------------------------
-- --                               JSON                               --
-- ----------------------------------------------------------------------
-- lsp_config.jsonls.setup({
-- 	handlers = handlers,
-- 	flags = flags,
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- 	commands = {
-- 		Format = {
-- 			function()
-- 				vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
-- 			end,
-- 		},
-- 	},
-- })
--
--
-- ----------------------------------------------------------------------
-- --                              RACKET                              --
-- ----------------------------------------------------------------------
-- lsp_config.racket_langserver.setup({})
--
-- ----------------------------------------------------------------------
-- --                                GO                                --
-- ----------------------------------------------------------------------
-- lsp_config.gopls.setup({
-- 	settings = {
-- 		gopls = {
-- 			analyses = { unusedparams = true, shadow = true },
-- 			staticcheck = true,
-- 			experimentalPostfixCompletions = true,
-- 		},
-- 	},
-- 	init_options = { usePlaceholders = true, completeUnimported = true },
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- 	flags = flags,
-- })

local nvim_lsp = require("lspconfig")
local configs = require("lspconfig.configs")
util = require("lspconfig/util")

local function lspSymbol(name, icon)
	local hl = "DiagnosticSign" .. name
	vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end

lspSymbol("Error", "")
lspSymbol("Info", "")
lspSymbol("Hint", "")
lspSymbol("Warn", "")

-- suppress error messages from lang servers
vim.notify = function(msg, log_level)
	if msg:match("exit code") then
		return
	end
	if log_level == vim.log.levels.ERROR then
		vim.api.nvim_err_writeln(msg)
	else
		vim.api.nvim_echo({ { msg } }, true, {})
	end
end

local function on_attach(_, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "gk", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap("n", "ge", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
	buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
	buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		"documentation",
		"detail",
		"additionalTextEdits",
	},
}

local function set_augroup(group_name, definition)
	vim.cmd("augroup " .. group_name)
	vim.cmd("autocmd!")
	for _, def in pairs(definition) do
		-- local command = table.concat(vim.tbl_flatten {'autocmd', def}, ' ')
		local command = "autocmd " .. table.concat(def, " ")
		vim.cmd(command)
	end
	vim.cmd("augroup END")
end

-- Format on save
set_augroup("lsp_format", {
	{ "BufWritePre", "*", "lua vim.lsp.buf.formatting_seq_sync(nil, 10000)" },
})

require("lsp-colors").setup({
	Error = "#db4b4b",
	Warning = "#e0af68",
	Information = "#0db9d7",
	Hint = "#00FF00",
	-- Hint = "#10B981",
})

local default_servers = {
	-- "bashls",
	"dockerls",
	"pyright",
}

for _, lsp in ipairs(default_servers) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 150,
		},
	})
end

----------------------------------------------------------------------
--                              SCALA                               --
----------------------------------------------------------------------
--TODO: This is terrible. Need to update this from scratch.
local shared_diagnostic_settings = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
nvim_lsp.util.default_config = vim.tbl_extend("force", nvim_lsp.util.default_config, {
	handlers = {
		["textDocument/publishDiagnostics"] = shared_diagnostic_settings,
	},
	capabilities = capabilities,
})
vim.lsp.diagnostic.show_line_diagnostics()
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	virtual_text = false,
	signs = true,
	underline = true,
	update_on_insert = false,
})
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]])
local dap = require("dap")
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
Metals_config.on_attach = function(client, bufnr)
	vim.cmd([[autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()]])
	vim.cmd([[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]])
	vim.cmd([[autocmd BufEnter,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()]])
	require("metals").setup_dap()
end

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
--
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
--                               JSON                               --
----------------------------------------------------------------------
nvim_lsp.jsonls.setup({
	on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end,
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
--                              GOLANG                              --
----------------------------------------------------------------------
nvim_lsp.gopls.setup({
	cmd = { "gopls" },
	-- for postfix snippets and analyzers
	root_dir = util.root_pattern("go.work", "go.mod", ".git"),
	single_file_support = true,
	settings = {
		gopls = {
			experimentalPostfixCompletions = true,
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true,
		},
	},
	on_attach = on_attach,
	capabilities = capabilities,
})

----------------------------------------------------------------------
--                            JAVASCRIPT                            --
----------------------------------------------------------------------
-- nvim_lsp.tsserver.setup({
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- 	filetypes = {
-- 		"javascript",
-- 		"javascript.jsx",
-- 		"javascriptreact",
-- 		"typescript",
-- 		"typescriptreact",
-- 		"typescript.tsx",
-- 	},
-- 	init_options = {
-- 		importModuleSpecifierEnding = "auto",
-- 		importModuleSpecifierPreference = "project-relative",
-- 		includePackageJsonAutoImports = "auto",
-- 	},
-- })
--
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

function OrgImports(wait_ms)
	local params = vim.lsp.util.make_range_params()
	params.context = { only = { "source.organizeImports" } }
	local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
	for _, res in pairs(result or {}) do
		for _, r in pairs(res.result or {}) do
			if r.edit then
				vim.lsp.util.apply_workspace_edit(r.edit)
			else
				vim.lsp.buf.execute_command(r.command)
			end
		end
	end
end

vim.cmd([[ autocmd BufWritePre *.go lua OrgImports(1000) ]])

-- function goimports(timeoutms)
-- 	local context = { source = { organizeImports = true } }
-- 	vim.validate({ context = { context, "t", true } })
--
-- 	local params = vim.lsp.util.make_range_params()
-- 	params.context = context
--
-- 	-- See the implementation of the textDocument/codeAction callback
-- 	-- (lua/vim/lsp/handler.lua) for how to do this properly.
-- 	local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
-- 	if not result or next(result) == nil then
-- 		return
-- 	end
-- 	local actions = result[1].result
-- 	if not actions then
-- 		return
-- 	end
-- 	local action = actions[1]
--
-- 	-- textDocument/codeAction can return either Command[] or CodeAction[]. If it
-- 	-- is a CodeAction, it can have either an edit, a command or both. Edits
-- 	-- should be executed first.
-- 	if action.edit or type(action.command) == "table" then
-- 		if action.edit then
-- 			vim.lsp.util.apply_workspace_edit(action.edit)
-- 		end
-- 		if type(action.command) == "table" then
-- 			vim.lsp.buf.execute_command(action.command)
-- 		end
-- 	else
-- 		vim.lsp.buf.execute_command(action)
-- 	end
-- end
--
-- vim.cmd([[ autocmd BufWritePre *.go lua vim.lsp.buf.formatting() ]])
-- vim.cmd([[ autocmd BufWritePre *.go lua goimports(1000) ]])
