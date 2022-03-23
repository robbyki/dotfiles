require("go").setup({
    auto_format = true,
    auto_lint = true,
    -- linters: revive, errcheck, staticcheck, golangci-lint
    linter = "revive",
    -- linter_flags: e.g., {revive = {'-config', '/path/to/config.yml'}}
    linter_flags = {},
    -- lint_prompt_style: qf (quickfix), vt (virtual text)
    lint_prompt_style = "vt",
    -- formatter: goimports, gofmt, gofumpt
    formatter = "goimports",
    -- test flags: -count=1 will disable cache
    test_flags = { "-v" },
    test_timeout = "30s",
    test_env = {},
    -- show test result with popup window
    test_popup = true,
    test_popup_width = 80,
    test_popup_height = 10,
    -- test open
    test_open_cmd = "edit",
    -- struct tags
    tags_name = "json",
    tags_options = { "json=omitempty" },
    tags_transform = "snakecase",
    tags_flags = { "-skip-unexported" },
    -- quick type
    quick_type_flags = { "--just-types" },
})

-- require("go").setup({
-- verbose = false,
-- run_in_floaterm = true,
-- goimport = "gopls",
-- gofmt = "gopls",
-- max_line_len = 120,
-- comment_placeholder = "   ",
-- -- lsp_cfg = true, -- false: use your own lspconfig
-- -- lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
-- -- lsp_codelens = true,
-- lsp_on_attach = on_attach_normal, -- use on_attach from go.nvim
-- dap_debug = true,
-- })
