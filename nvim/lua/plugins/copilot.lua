vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = "<Plug>(Tabout)"
vim.g.copilot_filetypes = { ["*"] = true, TelescopePrompt = false }
vim.cmd('imap <silent><script><expr> <C-Q> copilot#Accept("")')
