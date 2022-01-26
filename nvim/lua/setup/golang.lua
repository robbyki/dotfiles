vim.g.go_auto_type_info = 1
vim.g.go_test_show_name = 1
vim.g.go_doc_max_height = 40
vim.g.go_doc_popup_window = 1
vim.g.go_diagnostics_enabled = 1
vim.g.go_diagnostics_level = 2
vim.g.go_template_autocreate = 0
vim.g.go_metalinter_command = "golangci-lint"
vim.g.go_metalinter_autosave = 0
vim.g.go_metalinter_autosave_enabled = {}
vim.g.go_metalinter_enabled = {}
vim.g.go_gopls_gofumpt = 1
-- vim.g.go_fmt_command                 = "golines"
vim.g.go_fmt_options = {
    gofmt = "-s",
    golines = "-m 80 -t 2",
}
