local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ','


map('n', '<Space>', '<NOP>')
map('n', '\\', ':NvimTreeToggle<CR>')
map("i", "<C-c>", "<Esc>")

-- zoxide
-- change directory for where editor is to be able to run cool fuzzy findings
-- also helpful when running fuzzy grep with telescope from project root "<leader>sl"
map('n', '<Leader>cd', [[<cmd>lua require'telescope'.extensions.zoxide.list{}<CR>]])

-- harpoon to quickly add files to a temporary directory per-session
map('n', '<Leader>hm', [[<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]])
map('n', '<Leader>ha', [[<cmd>lua require("harpoon.mark").add_file()<CR>]])
map('n', '<Leader>hc', [[<cmd>lua require("harpoon.mark").clear_all()<CR>]])

--telescope (finders)
map('n', '<Leader>?',  [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])
map('n', '<Leader>FF', [[<cmd>lua require('telescope.builtin').find_files({ cwd = "$HOME", hidden = true })<CR>]]) -- this one is expensive
map('n', '<Leader>bb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
map('n', '<Leader>ff', [[<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>]])
map('n', '<Leader>gb', [[<cmd>lua require('telescope.builtin').git_branches()<CR>]])
map('n', '<Leader>gf', [[<cmd>lua require('telescope.builtin').git_files()<CR>]])
map('n', '<Leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
map('n', '<Leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
map('n', '<Leader>sl', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
map('n', '<Leader>sp', [[<cmd>lua require('telescope').extensions.project.project({})<CR>]])
map('n', '<Leader>ss', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])
map('n', '<Leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]])
map('n', '<Leader>tt', [[<cmd>lua require('telescope.builtin').builtin()<CR>]])

-- lsp stuff...yes, I need to setup which key plugin before I lose my mind.
map('n', '<space>a',  [[<cmd>lua require("metals").open_all_diagnostics()<CR>]])
map('n', '<space>ca', [[<cmd>lua vim.lsp.buf.code_action()<CR>]])
map('n', '<space>cl', [[<cmd>lua vim.lsp.codelens.run()<CR>]])
map('n', '<space>d',  [[<cmd>lua vim.diagnostic.setloclist()<CR>]])
map('n', '<space>dK', [[<cmd>lua require'dap'.ui.widgets".hover()<CR>]])
map('n', '<space>dc', [[<cmd>lua require'dap'.continue()<CR>]])
map('n', '<space>ddd',[[<cmd>lua require'dap'.list_breakpoints()<CR>]])
map('n', '<space>dl', [[<cmd>lua require'dap'.run_last()<CR>]])
map('n', '<space>dr', [[<cmd>lua require'dap'.repl.toggle()<CR>)]])
map('n', '<space>dr', [[<cmd>lua require'dap'.repl.toggle()<CR>]])
map('n', '<space>ds', [[<cmd>lua require'dap'.step_into()<CR>]])
map('n', '<space>ds', [[<cmd>lua require'dap'.step_over()<CR>]])
map('n', '<space>ds', [[<cmd>lua require'dap'.ui.variables".scopes()<CR>]])
map('n', '<space>dsi',[[<cmd>lua require'dap'.step_into()<CR>)]])
map('n', '<space>dso',[[<cmd>lua require'dap'.step_over()<CR>]])
map('n', '<space>dt', [[<cmd>lua require'dap'.toggle_breakpoint()<CR>]])
map('n', '<space>e',  [[<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>]])
map('n', '<space>f',  [[<cmd>lua vim.lsp.buf.formatting()<CR>]])
map('n', '<space>gd', [[<cmd>lua vim.lsp.buf.definition()<CR>]])
map('n', '<space>gi', [[<cmd>lua vim.lsp.buf.implementation()<CR>]])
map('n', '<space>gr', [[<cmd>lua vim.lsp.buf.references()<CR>]])
map('n', '<space>ld', [[<cmd>lua vim.diagnostic.open_float(0)<CR>]])
map('n', '<space>ln', [[<cmd>lua vim.lsp.diagnostic.get_line_diagnostics()<CR>]])
map('n', '<space>nd', [[<cmd>lua vim.diagnostic.goto_next()<CR>]])
map('n', '<space>pd', [[<cmd>lua vim.diagnostic.goto_prev()<CR>]])
map('n', '<space>q',  [[<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>]])
map('n', '<space>rn', [[<cmd>lua vim.lsp.buf.rename()<CR>]])
map('n', '<space>sh', [[<cmd>lua vim.lsp.buf.signature_help()<CR>]])
map('n', '<space>st', [[<cmd>lua require('metals').toggle_setting("showImplicitArguments")<CR>]])
map('n', '<space>wa', [[<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>]])
map('n', '<space>ws', [[<cmd>lua require"metals".hover_worksheet()<CR>]])
map('n', '<space>K',  [[<cmd>lua vim.lsp.buf.hover()<CR>]])
map('n', '<space>d',  [[<cmd>lua require'telescope.builtin'.lsp_definitions()<CR>]])
map('n', '<space>ds', [[<cmd>lua require'telescope.builtin'.lsp_document_symbols()<CR>]])
map('n', '<space>dws',[[<cmd>lua require'telescope.builtin'.lsp_dynamic_workspace_symbols()<CR>]])
map('n', '<space>r',  [[<cmd>lua require'telescope.builtin'.lsp_references()<CR>]])
map('n', '<space>ws', [[<cmd>lua require'telescope.builtin'.lsp_workspace_symbols()<CR>]])
map('v', '<space>t',  [[<Esc><cmd>lua require("metals").type_of_range()<CR>]])

vim.cmd([[
  nnoremap <silent> <C-Up> : resize -2<CR>
  nnoremap <silent> <C-Down> : resize +2<CR>
  nnoremap <silent> <C-Left> : vertical resize -2<CR>
  nnoremap <silent> <C-Right> : vertical resize +2<CR>
]])

-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Tab switch buffer
map('n', '<TAB>', ':bnext<CR>')
map('n', '<S-TAB>', ':bprevious<CR>')

-- Move selected line / block of text in visual mode
map('x', 'K', ':move \'<-2<CR>gv-gv')
map('x', 'J', ':move \'>+1<CR>gv-gv')

---- normal-mode mappings
map("n", "<Leader>h", ":nohlsearch<cr>")
map("n", "<Leader>xml", ":%!xmllint --format -<cr>")
map("n", "<Leader>fo", ":copen<cr>") -- open quickfix window
map("n", "<Leader>fc", ":cclose<cr>") -- close quickfix window

map("n", "<leader>o", ":ToggleOnly<CR>")

map('n', '<Leader>ev', ":vs $MYVIMRC<CR>")
map('n', '<Leader>sv', ":luafile $MYVIMRC<CR>:echo 'Reloaded vimrc!'<CR>")

-- completion
map('i', '<S-Tab>', [[pumvisible() ? '<C-p>' : '<Tab>']])
map('i', '<Tab>', [[pumvisible() ? '<C-n>' : '<Tab>']])

map('n', '<Leader>gg',':LazyGit<CR>')


-- map('n', '<Leader><Leader>p', [[<cmd>lua require"playground.utils".peek()<CR>]])
-- map('n', '<Leader><Leader>s', [[<cmd>lua RELOAD("playground.semantic").generate()<CR>]])

-- set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)

-- map('n', '<Leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], opts)

-- nvim-lsp
--vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
-- map('n', '<Leader>q',  ':MetalsRestartServer', opts)

-- map('n', '<Leader>ca', [[<cmd>lua require"lspsaga.codeaction".code_action()<CR>]])
--set_keymap('n', '<Leader>rn', [[<cmd>lua require"lspsaga.rename".rename()<CR>]], opts)
--set_keymap('n', '[c',         [[<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_prev()<CR>]], opts)
--set_keymap('v', '<Leader>ca', [[<cmd>lua require"lspsaga.codeaction".range_code_action()<CR>]], opts)
--set_keymap('n', ']c',         [[<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_next()<CR>]], opts)

-- better window movement
-- set_keymap('i', '<C-CR>', '<C-O>o', { silent = true })
--set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
--set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
--set_keymap('n', '<C-l>', '<C-w>l', { silent = true })
-- TODO fix this
-- Terminal window navigation
-- vim.cmd([[inoremap <C-l> <C-O>o]])
--vim.cmd([[
--  tnoremap <C-h> <C-\><C-N><C-w>h
--  tnoremap <C-j> <C-\><C-N><C-w>j
--  tnoremap <C-k> <C-\><C-N><C-w>k
--  tnoremap <C-l> <C-\><C-N><C-w>l
--  inoremap <C-h> <C-\><C-N><C-w>h
--  inoremap <C-j> <C-\><C-N><C-w>j
--  inoremap <C-k> <C-\><C-N><C-w>k
--  inoremap <C-l> <C-\><C-N><C-w>l
--  tnoremap <Esc> <C-\><C-n>
--]])

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])
-- local opts = { noremap=true, silent=true }
-- local function set_keymap(...) vim.api.nvim_set_keymap(...) end
-- map("n", "q", "<Nop>")
