local shared_diagnostic_settings = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })
local lsp_config = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()

lsp_config.util.default_config = vim.tbl_extend("force", lsp_config.util.default_config, {
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
  superMethodLensesEnabled = true
  -- fallbackScalaVersion = "2.13.6",
  --serverProperties = {
  --  "-Dmetals.scala-cli.launcher=/usr/local/bin/scala-cli",
  --},
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
      runType = "run"
    }
  },
  {
    type = "scala",
    request = "launch",
    name = "Test File",
    metals = {
      runType = "testFile"
    }
  },
  {
    type = "scala",
    request = "launch",
    name = "Test Target",
    metals = {
      runType = "testTarget"
    }
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
      diagnostics = { globals = { "vim", "it", "describe", "before_each"} },
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

lsp_config.bashls.setup{ on_attach=on_attach }
lsp_config.pyright.setup{ on_attach=on_attach }
lsp_config.dockerls.setup({})
lsp_config.html.setup({})
lsp_config.jsonls.setup({
  commands = {
    Format = {
      function()
        vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
      end,
    },
  },
})
lsp_config.tsserver.setup({
  capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(client)
  client.resolved_capabilities.document_formatting = false
end,
})
lsp_config.yamlls.setup({})
lsp_config.racket_langserver.setup({})

lsp_config.gopls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		gopls = {
			buildFlags = { "-tags=wireinject" },
			experimentalTemplateSupport = true,
			usePlaceholders = true,
			codelenses = {
				gc_details = true,
				generate = true,
				regenerate_cgo = true,
				tidy = true,
				upgrade_dependency = true,
				vendor = true,
				nilness = true,
			},
			analyses = {
				fillreturns = true,
				nonewvars = true,
				shadow = true,
				undeclaredname = true,
				unreachable = true,
				unusedparams = true,
				unusedwrite = true,
			},
			gofumpt = true,
			["local"] = "go.ngrok.com",
			staticcheck = true,
		},
	},
	flags = {
		debounce_text_changes = 200,
	},
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

  -- lsp_config.gopls.setup({
  --   cmd = { "gopls", "serve" },
  --   settings = {
  --     gopls = { analyses = { unusedparams = true }, staticcheck = true },
  --   },
  -- })

  -- require("lspconfig").kotlin_language_server.setup({
  --   cmd = {
  --     "/Users/ckipp/Documents/kotlin-workspace/kotlin-language-server/server/build/install/server/bin/kotlin-language-server",
  --   },
  -- })

  -- lsp_config.elmls.setup({})

  -- Uncomment for trace logs from neovim
  --vim.lsp.set_log_level('trace')