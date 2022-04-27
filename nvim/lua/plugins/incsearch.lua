vim.api.nvim_set_var("incsearch#auto_nohlsearch", 1)
vim.api.nvim_set_keymap("", "/", [[<Plug>(incsearch-forward)]], { silent = true })
vim.api.nvim_set_keymap("", "?", [[<Plug>(incsearch-backward)]], { silent = true })
vim.api.nvim_set_keymap("", "g/", [[<Plug>(incsearch-stay)]], { silent = true })
local keys = { "n", "N", "*", "#", "g*", "g#" }
for _, key in ipairs(keys) do
  local rhs = string.format("<Plug>(incsearch-%s)", key)
  vim.api.nvim_set_keymap("", key, rhs, { silent = true })
end
