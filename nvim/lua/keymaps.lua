vim.g.mapleader = ','

local opts = { noremap=true, silent=true }
local function set_keymap(...) vim.api.nvim_set_keymap(...) end

set_keymap('n', '<Space>', '<NOP>', opts)

-- set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)

-- explorer
set_keymap('n', '\\', ':NvimTreeToggle<CR>', opts)
set_keymap("n", "q", "<Nop>", opts)
-- better window movement
-- set_keymap('i', '<C-CR>', '<C-O>o', { silent = true })
--set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
--set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
--set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

set_keymap('n', '<leader>hq', [[<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]], { noremap = true, silent = true})
set_keymap('n', '<leader>m',  [[<cmd>lua require("harpoon.mark").add_file()<CR>]], { noremap = true, silent = true})
set_keymap('n', '<leader>hc', [[<cmd>lua require("harpoon.mark").clear_all()<CR>]], { noremap = true, silent = true})

--telescope (finders)
set_keymap('n', '<Leader>ff', [[<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>]], opts)
set_keymap('n', '<Leader>sat',[[<cmd>lua require('telescope.builtin').find_files({ cwd = "~/dev/ibm-projects/aide-template", hidden = true })<CR>]], opts)
set_keymap('n', '<Leader>sau',[[<cmd>lua require('telescope.builtin').find_files({ cwd = "~/dev/ibm-projects/aide-utilities", hidden = true })<CR>]], opts)
set_keymap('n', '<Leader>sd', [[<cmd>lua require('telescope.builtin').find_files({ cwd = "~/.dotfiles/", hidden = true })<CR>]], opts)
set_keymap('n', '<Leader>sD', [[<cmd>lua require('telescope.builtin').find_files({ cwd = "~/dev", hidden = true })<CR>]], opts)
set_keymap('n', '<Leader>FF', [[<cmd>lua require('telescope.builtin').find_files({ cwd = "$HOME", hidden = true })<CR>]], opts)
set_keymap('n', '<Leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], opts)
-- set_keymap('n', '<Leader>st', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], opts)
-- set_keymap('n', '<Leader>sT', [[<cmd>lua require('telescope.builtin').tags()<CR>]], opts)
set_keymap('n', '<Leader>ss', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], opts)
set_keymap('n', '<Leader>sg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
set_keymap('n', '<Leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], opts)
set_keymap('n', '<Leader>?',  [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)
set_keymap('n', '<Leader>gf', [[<cmd>lua require('telescope.builtin').git_files()<CR>]], opts)
set_keymap('n', '<Leader>gb', [[<cmd>lua require('telescope.builtin').git_branches()<CR>]], opts)
set_keymap('n', '<Leader>bb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
set_keymap('n', '<Leader>fp', [[<cmd>lua require('telescope').extensions.project.project({})<CR>]], opts)

-- nvim-lsp
--vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
-- set_keymap('n', '<Leader>q',  ':MetalsRestartServer', opts)
set_keymap('n', '<Leader>ca', [[<cmd>lua require"lspsaga.codeaction".code_action()<CR>]], opts)
set_keymap('n', '<Leader>rn', [[<cmd>lua require"lspsaga.rename".rename()<CR>]], opts)
set_keymap('n', '[c',         [[<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_prev()<CR>]], opts)
set_keymap('v', '<Leader>ca', [[<cmd>lua require"lspsaga.codeaction".range_code_action()<CR>]], opts)
set_keymap('n', ']c',         [[<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_next()<CR>]], opts)
set_keymap('n', '<Leader>ca', [[<cmd>lua vim.lsp.buf.code_action()<CR>]], opts)
set_keymap('n', '<Leader>cl', [[<cmd>lua vim.lsp.codelens.run()<CR>]], opts)
set_keymap('n', '<Leader>ln', [[<cmd>lua vim.lsp.diagnostic.get_line_diagnostics()<CR>]], opts)
set_keymap('n', '<Leader>rn', [[<cmd>lua vim.lsp.buf.rename()<CR>]], opts)
set_keymap('n', '<Leader>sh', [[<cmd>lua vim.lsp.buf.signature_help()<CR>]], opts)
set_keymap('n', '<space>D',   [[<cmd>lua vim.lsp.buf.type_definition()<CR>]], opts)
set_keymap('n', '<space>e',   [[<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>]], opts)
set_keymap('n', '<space>f',   [[<cmd>lua vim.lsp.buf.formatting()<CR>]], opts)
set_keymap('n', '<space>gi',  [[<cmd>lua vim.lsp.buf.implementation()<CR>]], opts)
set_keymap('n', '<space>gr',  [[<cmd>lua vim.lsp.buf.references()<CR>]], opts)
set_keymap('n', '<space>q',   [[<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>]], opts)
set_keymap('n', '<space>wa',  [[<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>]], opts)
set_keymap('n', 'K',          [[<cmd>lua vim.lsp.buf.hover()<CR>]], opts)
set_keymap('n', '<Leader>gd',         [[<cmd>lua vim.lsp.buf.definition()<CR>]], opts)
set_keymap('n', 'gi',         [[<cmd>lua vim.lsp.buf.implementation()<CR>]], opts)
set_keymap('n', '<Leader>gr', [[<cmd>lua vim.lsp.buf.references()<CR>]], opts)
set_keymap('n', '<Leader>d',  [[<cmd>lua vim.diagnostic.setloclist()<CR>]], opts) -- buffer diagnostics only
set_keymap('n', '<Leader>ld', [[<cmd>lua vim.diagnostic.open_float(0, {scope = "line"})<CR>]], opts)
set_keymap('n', '<Leader>nd', [[<cmd>lua vim.diagnostic.goto_next()<CR>]], opts)
set_keymap('n', '<Leader>pd', [[<cmd>lua vim.diagnostic.goto_prev()<CR>]], opts)

-- metals lsp
set_keymap('n', '<Leader>tr', [[<cmd>lua require("metals.tvp").reveal_in_tree()<CR>]], opts)
set_keymap('n', '<Leader>tt', [[<cmd>lua require("metals.tvp").toggle_tree_view()<CR>]], opts)
set_keymap('n', '<Leader>ws', [[<cmd>lua require"metals".hover_worksheet()<CR>]], opts)
set_keymap('v', 'K',          [[<Esc><cmd>lua require("metals").type_of_range()<CR>]], opts)
set_keymap('n', '<Leader>a',  [[<cmd>lua require("metals").open_all_diagnostics()<CR>]], opts)

-- telescope lsp
--set_keymap('n', 'gws',        [[<cmd>lua require"telescope.builtin".lsp_workspace_symbols()<CR>]], opts)
--set_keymap('n', 'gds',        [[<cmd>lua require"telescope.builtin".lsp_document_symbols()<CR>]], opts)
--set_keymap('n', 'gdws',       [[<cmd>lua require"telescope.builtin".lsp_dynamic_workspace_symbols()<CR>]], opts)
--set_keymap('n', 'gr',         [[<cmd>lua require"telescope.builtin".lsp_references()<CR>]], opts)
--set_keymap('n', 'gd',         [[<cmd>lua require"telescope.builtin".lsp_definitions()<CR>]], opts)
-- set_keymap('n', '<Leader>gc', [[<cmd>lua require"telescope.builtin".builtin()<CR>]], opts)
-- set_keymap('n', 'gdws',       [[<cmd>lua require"telescope.builtin".lsp_references()<CR>]], opts)

-- set_keymap("n", "<leader>st", [[<cmd>lua require("metals").toggle_setting("showImplicitArguments")<CR>]], opts)

-- nvim-dap
set_keymap('n', '<Leader>dc', [[<cmd>lua require"dap".continue()<CR>]], opts)
set_keymap('n', '<Leader>dr', [[<cmd>lua require"dap".repl.toggle()<CR>]], opts)
set_keymap('n', '<Leader>ds', [[<cmd>lua require"dap.ui.variables".scopes()<CR>]], opts)
set_keymap('n', '<Leader>dK', [[<cmd>lua require"dap.ui.widgets".hover()<CR>]], opts)
set_keymap('n', '<Leader>dt', [[<cmd>lua require"dap".toggle_breakpoint()<CR>]], opts)
set_keymap('n', '<Leader>ds', [[<cmd>lua require"dap".step_over()<CR>]], opts)
set_keymap('n', '<Leader>ds', [[<cmd>lua require"dap".step_into()<CR>]], opts)
set_keymap('n', '<Leader>dl', [[<cmd>lua require"dap".run_last()<CR>]], opts)

-- lazygit
set_keymap('n', '<leader>gg',':LazyGit<CR>', opts)

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

vim.cmd([[
  nnoremap <silent> <C-Up> : resize -2<CR>
  nnoremap <silent> <C-Down> : resize +2<CR>
  nnoremap <silent> <C-Left> : vertical resize -2<CR>
  nnoremap <silent> <C-Right> : vertical resize +2<CR>
]])

-- better indenting
set_keymap('v', '<', '<gv', opts)
set_keymap('v', '>', '>gv', opts)

-- I hate escape
-- set_keymap('i', 'jj', '<ESC>', opts)

-- Tab switch buffer
set_keymap('n', '<TAB>', ':bnext<CR>', opts)
set_keymap('n', '<S-TAB>', ':bprevious<CR>', opts)

-- Move selected line / block of text in visual mode
set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', opts)
set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', opts)

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])

--local function map(mode, lhs, rhs, opts)
--  local options = { noremap = true, silent = true }
--  if opts then
--    options = vim.tbl_extend("force", options, opts)
--  end
--  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
--end

---- normal-mode mappings
set_keymap("n", "<leader>h", ":nohlsearch<cr>", opts)
set_keymap("n", "<leader>xml", ":%!xmllint --format -<cr>", opts)
set_keymap("n", "<leader>fo", ":copen<cr>", opts)
set_keymap("n", "<leader>fc", ":cclose<cr>", opts)
-- set_keymap("n", "<leader>fn", ":cnext<cr>", opts)
-- set_keymap("n", "<leader>fp", ":cprevious<cr>", opts)
-- set_keymap("n", "<leader>tv", ":new | :te<cr>", opts)

set_keymap("n", "<leader>o", ":ToggleOnly<CR>", opts)

set_keymap('n', '<leader>ev', ":vs $MYVIMRC<CR>", opts)
set_keymap('n', '<leader>sv', ":luafile $MYVIMRC<CR>:echo 'Reloaded vimrc!'<CR>", opts)

-- completion
set_keymap('i', '<S-Tab>', [[pumvisible() ? '<C-p>' : '<Tab>']], { expr = true })
set_keymap('i', '<Tab>', [[pumvisible() ? '<C-n>' : '<Tab>']], { expr = true })

-- debug
set_keymap('n', '<leader>dc', '<cmd>lua require"dap".continue()<CR>', opts)
set_keymap("n", "<leader>dr", '<cmd>lua require"dap".repl.toggle()<CR>', opts)
set_keymap("n", "<leader>dtb", '<cmd>lua require"dap".toggle_breakpoint()<CR>', opts)
set_keymap("n", "<leader>dso", '<cmd>lua require"dap".step_over()<CR>', opts)
set_keymap("n", "<leader>dsi", '<cmd>lua require"dap".step_into()<CR>', opts)
set_keymap("n", "<leader>ddd", '<cmd>lua require"dap".list_breakpoints()<CR>', opts)

set_keymap("n", "<leader><leader>p", '<cmd>lua require"playground.utils".peek()<CR>', opts)
set_keymap("n", "<leader><leader>s", '<cmd>lua RELOAD("playground.semantic").generate()<CR>', opts)

-- Needed to esnure float background doesn't get odd highlighting
-- https://github.com/joshdick/onedark.vim#onedarkset_highlight
--cmd([[augroup colorset]])
--cmd([[autocmd!]])
--cmd([[autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" } })]])
--cmd([[augroup END]])
