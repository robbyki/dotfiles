-- local api = vim.api
-- local f = require("utils")
-- local map = f.map
--
-- -- LSP specific mappings
-- map("n", "gD", [[<cmd>lua vim.lsp.buf.definition()<CR>]])
-- map("n", "K", [[<cmd>lua vim.lsp.buf.hover()<CR>]])
-- map("v", "K", [[<Esc><cmd>lua require("metals").type_of_range()<CR>]])
-- map("n", "<leader>sh", [[<cmd>lua vim.lsp.buf.signature_help()<CR>]])
-- map("n", "gi", [[<cmd>lua vim.lsp.buf.implementation()<CR>]])
-- map("n", "gr", [[<cmd>lua vim.lsp.buf.references()<CR>]])
-- map("n", "<leader>rn", [[<cmd>lua vim.lsp.buf.rename()<CR>]])
-- map("n", "<leader>ca", [[<cmd>lua vim.lsp.buf.code_action()<CR>]])
-- map("n", "<leader>ws", [[<cmd>lua require("metals").hover_worksheet()<CR>]])
-- map("n", "<leader>tt", [[<cmd>lua require("metals.tvp").toggle_tree_view()<CR>]])
-- map("n", "<leader>tr", [[<cmd>lua require("metals.tvp").reveal_in_tree()<CR>]])
-- map("n", "<leader>cl", [[<cmd>lua vim.lsp.codelens.run()<CR>]])
-- map("n", "<leader>o", [[<cmd>lua vim.lsp.buf.formatting()<CR>]])
-- map("n", "<leader>st", [[<cmd>lua require("metals").toggle_setting("showImplicitArguments")<CR>]])
--
-- -- WIP trying some stuff out with this
-- map("n", "<leader>td", [[<cmd>lua require("metals.test").toggle_test_view()<CR>]])
--
-- local lsp_config = require("lspconfig")
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
--
-- lsp_config.util.default_config = vim.tbl_extend("force", lsp_config.util.default_config, {
-- 	capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities),
-- })
--
-- --================================
-- -- Metals specific setup
-- --================================
-- local metals_config = require("metals").bare_config()
--
-- metals_config.settings = {
-- 	showImplicitArguments = true,
-- 	showImplicitConversionsAndClasses = true,
-- 	showInferredType = true,
-- 	--testUserInterface = "test explorer",
-- 	excludedPackages = {
-- 		"akka.actor.typed.javadsl",
-- 		"com.github.swagger.akka.javadsl",
-- 		"akka.stream.javadsl",
-- 		"akka.http.javadsl",
-- 	},
-- 	--fallbackScalaVersion = "2.13.7",
-- 	serverVersion = "0.11.2+30-f9261de6-SNAPSHOT",
-- 	--serverVersion = "0.11.3-SNAPSHOT",
-- }
--
-- metals_config.init_options.statusBarProvider = "on"
-- metals_config.capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
--
-- metals_config.on_attach = function(client, bufnr)
-- 	vim.cmd([[autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()]])
-- 	vim.cmd([[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]])
-- 	vim.cmd([[autocmd BufEnter,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()]])
--
-- 	-- nvim-dap
-- 	-- I only use nvim-dap with Scala, so we keep it all in here
-- 	local dap = require("dap")
--
-- 	dap.configurations.scala = {
-- 		{
-- 			type = "scala",
-- 			request = "launch",
-- 			name = "RunOrTest",
-- 			metals = {
-- 				runType = "runOrTestFile",
-- 				--args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
-- 			},
-- 		},
-- 		{
-- 			type = "scala",
-- 			request = "launch",
-- 			name = "Run",
-- 			metals = {
-- 				runType = "run",
-- 				--args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
-- 			},
-- 		},
-- 		{
-- 			type = "scala",
-- 			request = "launch",
-- 			name = "Test Target",
-- 			metals = {
-- 				runType = "testTarget",
-- 			},
-- 		},
-- 	}
--
-- 	map("n", "<leader>dc", [[<cmd>lua require("dap").continue()<CR>]])
-- 	map("n", "<leader>dr", [[<cmd>lua require("dap").repl.toggle()<CR>]])
-- 	map(
-- 		"n",
-- 		"<leader>ds",
-- 		[[<cmd>lua require("dap.ui.widgets").sidebar(require("dap.ui.widgets").scopes).toggle()<CR>]]
-- 	)
-- 	map("n", "<leader>dK", [[<cmd>lua require("dap.ui.widgets").hover()<CR>]])
-- 	map("n", "<leader>dt", [[<cmd>lua require("dap").toggle_breakpoint()<CR>]])
-- 	map("n", "<leader>dbc", [[<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]])
-- 	map("n", "<leader>dso", [[<cmd>lua require("dap").step_over()<CR>]])
-- 	map("n", "<leader>dsi", [[<cmd>lua require("dap").step_into()<CR>]])
-- 	map("n", "<leader>dl", [[<cmd>lua require("dap").run_last()<CR>]])
--
-- 	require("metals").setup_dap()
-- end
--
-- local lsp_group = api.nvim_create_augroup("lsp", { clear = true })
-- api.nvim_create_autocmd("FileType", {
-- 	pattern = { "scala", "sbt", "java" },
-- 	callback = function()
-- 		require("metals").initialize_or_attach(metals_config)
-- 	end,
-- 	group = lsp_group,
-- })
--
-- lsp_config.dockerls.setup({})
-- lsp_config.html.setup({})
-- lsp_config.jsonls.setup({
-- 	commands = {
-- 		Format = {
-- 			function()
-- 				vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
-- 			end,
-- 		},
-- 	},
-- })
-- lsp_config.tsserver.setup({})
-- lsp_config.yamlls.setup({})
-- lsp_config.racket_langserver.setup({})
-- lsp_config.gopls.setup({
-- 	cmd = { "gopls", "serve" },
-- 	settings = {
-- 		gopls = { analyses = { unusedparams = true }, staticcheck = true },
-- 	},
-- })
--
-- ----------------------------------------------------------------------
-- --                              SCALA                               --
-- ----------------------------------------------------------------------
-- -- local shared_diagnostic_settings = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })
-- -- -- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- -- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- -- nvim_lsp.util.default_config = vim.tbl_extend("force", nvim_lsp.util.default_config, {
-- -- 	handlers = {
-- -- 		["textDocument/publishDiagnostics"] = shared_diagnostic_settings,
-- -- 	},
-- -- 	capabilities = capabilities,
-- -- })
-- -- vim.lsp.diagnostic.show_line_diagnostics()
-- -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- -- 	virtual_text = false,
-- -- 	signs = true,
-- -- 	underline = true,
-- -- 	update_on_insert = false,
-- -- })
-- -- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]])
-- -- local dap = require("dap")
-- -- Metals_config = require("metals").bare_config()
-- -- Metals_config.settings = {
-- -- 	showImplicitArguments = true,
-- -- 	showInferredType = true,
-- -- 	excludedPackages = {
-- -- 		"akka.actor.typed.javadsl",
-- -- 		"com.github.swagger.akka.javadsl",
-- -- 		"akka.stream.javadsl",
-- -- 	},
-- -- 	superMethodLensesEnabled = true,
-- -- }
-- -- Metals_config.init_options.statusBarProvider = "on"
-- -- Metals_config.init_options.compilerOptions.isCompletionItemResolve = false
-- -- Metals_config.handlers["textDocument/publishDiagnostics"] = shared_diagnostic_settings
-- -- Metals_config.capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
-- -- Metals_config.on_attach = function(client, bufnr)
-- -- 	vim.cmd([[autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()]])
-- -- 	vim.cmd([[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]])
-- -- 	vim.cmd([[autocmd BufEnter,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()]])
-- -- 	require("metals").setup_dap()
-- -- end
-- --
-- -- dap.configurations.scala = {
-- -- 	{
-- -- 		type = "scala",
-- -- 		request = "launch",
-- -- 		name = "Run",
-- -- 		metals = {
-- -- 			runType = "run",
-- -- 		},
-- -- 	},
-- -- 	{
-- -- 		type = "scala",
-- -- 		request = "launch",
-- -- 		name = "Test File",
-- -- 		metals = {
-- -- 			runType = "testFile",
-- -- 		},
-- -- 	},
-- -- 	{
-- -- 		type = "scala",
-- -- 		request = "launch",
-- -- 		name = "Test Target",
-- -- 		metals = {
-- -- 			runType = "testTarget",
-- -- 		},
-- -- 	},
-- -- }
-- --
