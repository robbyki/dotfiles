local shared_diagnostic_settings = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })
local lsp_config = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
local dap = require("dap")

capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lsp_signature").setup()
require("lsp_signature").on_attach()

lsp_config.util.default_config = vim.tbl_extend("force", lsp_config.util.default_config, {
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

----------------------------------------------------------------------
--                              SCALA                               --
----------------------------------------------------------------------
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

----------------------------------------------------------------------
--                               LUA                                --
----------------------------------------------------------------------
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

----------------------------------------------------------------------
--                               BASH                               --
----------------------------------------------------------------------
lsp_config.bashls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "bash", "sh", "zsh" },
})

----------------------------------------------------------------------
--                              PYTHON                              --
----------------------------------------------------------------------
require("lspconfig").pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

----------------------------------------------------------------------
--                              DOCKER                              --
----------------------------------------------------------------------
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

----------------------------------------------------------------------
--                               HTML                               --
----------------------------------------------------------------------
lsp_config.html.setup({})

----------------------------------------------------------------------
--                               JSON                               --
----------------------------------------------------------------------
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

----------------------------------------------------------------------
--                            JAVASCRIPT                            --
----------------------------------------------------------------------
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

----------------------------------------------------------------------
--                               YAML                               --
----------------------------------------------------------------------
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
			-- schemaDownload = { enable = true },
			completion = true,
			hover = true,
			-- editor = { formatOnType = true },
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
				["https://raw.githubusercontent.com/robbyki/schemas/1f05c98df4ca8398f502f554734ff5e87acfcc4c/openshift/all.json"] = "/*.yaml",
				kubernetes = { "/*.yaml" },
			},
		},
	},
})

----------------------------------------------------------------------
--                              RACKET                              --
----------------------------------------------------------------------
lsp_config.racket_langserver.setup({})

----------------------------------------------------------------------
--                                GO                                --
----------------------------------------------------------------------
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
