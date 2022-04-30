require("go").setup({
  run_in_floaterm = true,
  gofmt = "gofumpt",
  lsp_codelens = true,
})

-- require("go").setup({
--   --   -- run_in_floaterm = true,
--   --   -- goimport = "gopls", -- goimport command
--   --   -- gofmt = "gopls", --gofmt cmd,
--   --   max_line_len = 120, -- max line length in goline format
--   --   -- tag_transform = false, -- tag_transfer  check gomodifytags for details
--   --   -- test_template = "", -- default to testify if not set; g:go_nvim_tests_template  check gotests for details
--   --   -- test_template_dir = "", -- default to nil if not set; g:go_nvim_tests_template_dir  check gotests for details
--   --   -- comment_placeholder = "   ",
--   --   goimport = "gopls",
--   --   gofmt = "gofumpt",
--   -- lsp_cfg = true,
--   lsp_codelens = false,
--   verbose = true,
--   log_path = "/home/robbyk/tmp/gonvim.log",
--   -- run_in_floaterm= true,
--   --   lsp_gofumpt = true,
--   --   -- lsp_gofumpt = true,
--   --   -- lsp_keymaps = false,
--   --   -- lsp_on_attach = as.lsp.on_attach,
--   --   -- lsp_diag_virtual_text = false,
--   --   -- dap_debug_keymap = false,
--   --   -- textobjects = false,
--   --
--   --   -- verbose = false, -- output loginf in messages
--   --   -- lsp_cfg = true, -- true: apply go.nvim non-default gopls setup
--   --   -- lsp_gofumpt = false, -- true: set default gofmt in gopls format to gofumpt
--   --   -- lsp_on_attach = false, -- if a on_attach function provided:  attach on_attach function to gopls
--   --   -- lsp_codelens = false, -- set to false to disable codelens, true by default
--   --   -- gopls_remote_auto = true, -- add -remote=auto to gopls
--   --   -- gopls_cmd = nil, -- if you need to specify gopls path and cmd, e.g {"/home/user/lsp/gopls", "-logfile", "/var/log/gopls.log" }
--   --   -- lsp_diag_hdlr = true, -- hook lsp diag handler
--   --   -- dap_debug = true, -- set to false to disable dap
--   --   -- fillstruct = "gopls",
--   --   -- dap_debug_keymap = true, -- set keymaps for debugger
--   --   -- dap_debug_gui = true, -- set to true to enable dap gui, highly recommand
--   --   -- dap_debug_vt = true, -- set to true to enable dap virtual text
-- })

-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
-- refresh codelens
-- vim.cmd('autocmd BufEnter,CursorHold,InsertLeave *.go lua require("go.codelens").refresh()')
-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]], false)
-- Import on save

-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require("go.format").goimport() ]], false)
-- vim.cmd('autocmd BufEnter,CursorHold,InsertLeave *.go lua require("go.codelens").refresh()')
