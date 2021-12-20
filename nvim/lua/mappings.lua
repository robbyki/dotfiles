local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ","

map("n", "<Space>", "<NOP>")
map("n", "\\", ":NvimTreeToggle<CR>")
map("i", "<C-c>", "<Esc>")

-- Keep search results centred
-- map("n", "n", "nzzzv")
-- map("n", "N", "Nzzzv")
-- map("n", "J", "mzJ`z")

--telescope (finders)
-- map("n", "<leader>?", [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])
-- map("n", "<leader>FF", [[<cmd>lua require('telescope.builtin').find_files({ cwd = "$HOME", hidden = true })<CR>]]) -- this one is expensive
-- map("n", "<leader>bb", [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
-- map("n", "<leader>ff", [[<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>]])
-- map("n", "<leader>gb", [[<cmd>lua require('telescope.builtin').git_branches()<CR>]])
-- map("n", "<leader>gf", [[<cmd>lua require('telescope.builtin').git_files()<CR>]])
-- map("n", "<leader>sb", [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
-- map("n", "<leader>sh", [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
-- map("n", "<leader>sl", [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
-- map("n", "<leader>sp", [[<cmd>lua require('telescope').extensions.project.project({})<CR>]])
-- map("n", "<leader>ss", [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])
-- map("n", "<leader>st", [[<cmd>lua require('telescope.builtin').tags()<CR>]])
-- map("n", "<leader>tt", [[<cmd>lua require('telescope.builtin').builtin()<CR>]])
-- map("n", "<leader>r", [[<cmd>lua require("telescope.builtin").registers()<cr>]])
-- map("n", "<leader>f", [[<cmd>lua require("telescope").extensions.file_browser.file_browser()<CR>]])

-- map("n", "<space>dK", [[<cmd>lua require'dap'.ui.widgets".hover()<CR>]])
-- map("n", "<space>dc", [[<cmd>lua require'dap'.continue()<CR>]])
-- map("n", "<space>ddd", [[<cmd>lua require'dap'.list_breakpoints()<CR>]])
-- map("n", "<space>dl", [[<cmd>lua require'dap'.run_last()<CR>]])
-- map("n", "<space>dr", [[<cmd>lua require'dap'.repl.toggle()<CR>)]])
-- map("n", "<space>dr", [[<cmd>lua require'dap'.repl.toggle()<CR>]])
-- map("n", "<space>ds", [[<cmd>lua require'dap'.step_into()<CR>]])
-- map("n", "<space>ds", [[<cmd>lua require'dap'.step_over()<CR>]])
-- map("n", "<space>ds", [[<cmd>lua require'dap'.ui.variables".scopes()<CR>]])
-- map("n", "<space>dsi", [[<cmd>lua require'dap'.step_into()<CR>)]])
-- map("n", "<space>dso", [[<cmd>lua require'dap'.step_over()<CR>]])
-- map("n", "<space>dt", [[<cmd>lua require'dap'.toggle_breakpoint()<CR>]])

-- map("n", "<space>ld", [[<cmd>lua vim.diagnostic.open_float(0)<CR>]])
-- map("n", "<space>nd", [[<cmd>lua vim.diagnostic.goto_next()<CR>]])
-- map("n", "<space>pd", [[<cmd>lua vim.diagnostic.goto_prev()<CR>]])

vim.cmd([[
  nnoremap <silent> <C-Up> : resize -2<CR>
  nnoremap <silent> <C-Down> : resize +2<CR>
  nnoremap <silent> <C-Left> : vertical resize -2<CR>
  nnoremap <silent> <C-Right> : vertical resize +2<CR>
]])

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprevious<CR>")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "J", ":move '>+1<CR>gv-gv")
map("n", "<Leader>h", ":nohlsearch<cr>")
map("n", "<Leader>xml", ":%!xmllint --format -<cr>")
map("n", "<Leader>fo", ":copen<cr>") -- open quickfix window
map("n", "<Leader>fc", ":cclose<cr>") -- close quickfix window
map("n", "<leader>o", ":ToggleOnly<CR>")
map("n", "<Leader>ev", ":vs $MYVIMRC<CR>")
map("n", "<Leader>sv", ":luafile $MYVIMRC<CR>:echo 'Reloaded vimrc!'<CR>")
map("i", "<S-Tab>", [[pumvisible() ? '<C-p>' : '<Tab>']])
map("i", "<Tab>", [[pumvisible() ? '<C-n>' : '<Tab>']])
map("n", "<Leader>gg", ":LazyGit<CR>")
map("n", "<esc>", ":noh<cr><esc>", { silent = true })
map("n", "<leader>so", ":SymbolsOutline<cr>")

-- map('n', '<Leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], opts)

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

-- vim.g.which_key_fallback_to_native_key = 1
vim.g.which_key_display_names = {
  ["<CR>"] = "↵",
  ["<TAB>"] = "⇆",
  [" "] = "🚀",
}
vim.g.which_key_sep = "→"
-- vim.g.which_key_timeout = 100

local wk = require("which-key")

wk.register({
  ["<leader>"] = { name = "+leader" },
  ["<leader>."] = { ":FloatermToggle<cr>", "Toggle terminal" },
  ["<leader>-"] = { ":Lf<cr>", "Start lf" },
  ["<leader><leader>b"] = { "<Cmd>lua require('telescope.builtin').builtin()<CR>", "telescope builtins" },
  ["<leader>?"] = { "<Cmd>lua require('telescope.builtin').oldfiles()<CR>", "recent files" },
  ["<leader>r"] = { "<Cmd>lua require('renamer').rename()<CR>", "rename" },
  ["<leader>z"] = { ":ZenMode<CR>", "zen mode" },
  ["<space>m"] = { ":MinimapToggle<CR>", "minimap toggle" },
  ["<leader><leader>l"] = { "<Cmd>lua require'hop'.hint_lines()<CR>", "hop by line" },
  ["<leader><leader>w"] = { "<Cmd>lua require'hop'.hint_words()<CR>", "hop by word" },
})

wk.register({
  ["<leader>f"] = {
    name = "+search",
    B = { "<Cmd>lua require('telescope.builtin').buffers()<CR>", "buffers" },
    f = { "<Cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>", "find files here" },
    F = { "<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME', hidden = true })<CR>", "find files all" },
    b = { "<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", "fuzzy find here" },
    h = { "<Cmd>lua require('telescope.builtin').help_tags()<CR>", "help tags" },
    l = { "<Cmd>lua require('telescope.builtin').live_grep()<CR>", "live grep" },
    p = { "<Cmd>lua require('telescope').extensions.project.project({})<CR>", "projects" },
    s = { "<Cmd>lua require('telescope.builtin').grep_string()<CR>", "string search" },
    t = { "<Cmd>lua require('telescope.builtin').tags()<CR>", "tags" },
    r = { "<Cmd>lua require('telescope'.builtin).registers()<CR>", "tags" },
    d = { "<Cmd>lua require('telescope').extensions.zoxide.list{}<CR>", "zoxide cd" },
  },
  ["<leader>h"] = {
    name = "+hop around",
    m = { "<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "toggle quick menu" },
    a = { "<Cmd>lua require('harpoon.mark').add_file()<CR>", "harpoon add file" },
    c = { "<Cmd>lua require('harpoon.mark').clear_all()<CR>", "harpoon clear" },
  },
  ["<leader>c"] = {
    name = "+code",
    d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "goto definition" },
    f = { "<Cmd>lua vim.lsp.buf.formatting()<CR>", "format" },
    i = { "<Cmd>lua vim.lsp.buf.implementation()", "implementation" },
    r = { "<Cmd>lua vim.lsp.buf.references()<CR>", "references" },
    n = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
    s = { "<Cmd>lua vim.lsp.buf.signature_help()<CR>", "signature" },
    F = { "<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add folder" },
    h = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "hover" },
    ws = { "<Cmd>lua vim.lsp.buf.workspace_symbol()<CR>", "workspace symbol" },
    -- ds = { "<Cmd>lua vim.lsp.buf.document_symbol()<CR>", "document symbol" },
    -- d = { "<Cmd>lua require('metals').open_all_diagnostics()<CR>", "metals diagnostics" },
    -- i = { "<Cmd>lua require('metals').toggle_setting('showImplicitArguments')<CR>", "show implicits" },
    -- w = { "<Cmd>lua require('metals').hover_worksheet()<CR>", "hover" },
    -- w = { "<Cmd>lua require('metals').type_of_range()<CR>", "metals type of range" },
    -- w = { "<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", "line diagnostics" },
    -- w = { "<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "loc list" },
    -- w = { "<Cmd>lua require'telescope.builtin'.lsp_document_symbols()<CR>", "document symbols" },
    -- w = { "<Cmd>lua require'telescope.builtin'.lsp_workspace_symbols()<CR>", "workspace symbols" },
    -- w = { "<Cmd>lua require'telescope.builtin'.lsp_references()<CR>", "references" },
    -- w = { "<Cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", "lsp definitions" },
    -- S = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "code action" },
    -- S = { "<Cmd>lua vim.lsp.codelens.run()<CR>", "code lens run" },
  },
  -- a = {
  --   name = "+actions",
  --   c = { "<Cmd>ColorizerToggle<CR>", "Bracket Colorizer" },
  --   s = { '<Cmd>let @/ = ""<CR>', "Remove search highlight" },
  --   w = { "<Cmd>StripWhitespace<CR>", "Strip whitespace" },
  --   m = { "<Cmd>MarkdownPreviewToggle<CR>", "Markdown preview" },
  -- },
  -- b = {
  -- D = {
  --   name = "+debug",
  --   b = { "<Cmd>DebugToggleBreakpoint<CR>", "toggle breakpoint" },
  --   c = { "<Cmd>DebugContinue<CR>", "continue" },
  --   i = { "<Cmd>DebugStepInto<CR>", "step into" },
  --   o = { "<Cmd>DebugStepOver<CR>", "step over" },
  --   r = { "<Cmd>DebugToggleRepl<CR>", "toggle repl" },
  --   s = { "<Cmd>DebugStart<CR>", "start" },
  -- },
  -- g = {
  --   name = "+git",
  --   -- b = { "<Cmd>GitBlameToggle<CR>", "blame" },
  --   -- d = { "<Cmd>DiffviewOpen<CR>", "Diff view" },
  --   -- D = { "<Cmd>DiffviewClose<CR>", "Diff view close" },
  --   b = { [[<Cmd>lua require('telescope.builtin').git_branches()<CR>]], "git branches" },
  --   f = { [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], "git files" },
  -- },
  -- l = {
  --   name = "+lsp",
  --   a = { "<Cmd>Lspsaga code_action<CR>", "code action" },
  --   A = { "<Cmd>Lspsaga range_code_action<CR>", "selected action" },
  --   d = { "<Cmd>Telescope lsp_document_diagnostics<CR>", "document diagnostics" },
  --   D = { "<Cmd>Telescope lsp_workspace_diagnostics<CR>", "workspace diagnostics" },
  --   f = { "<Cmd>LspFormatting<CR>", "format" },
  --   v = { "<Cmd>LspVirtualTextToggle<CR>", "lsp toggle virtual text" },
  --   L = { "<Cmd>Lspsaga show_line_diagnostics<CR>", "line_diagnostics" },
  --   p = { "<Cmd>Lspsaga preview_definition<CR>", "preview definition" },
  --   q = { "<Cmd>Telescope quickfix<CR>", "quickfix" },
  --   r = { "<Cmd>Lspsaga rename<CR>", "rename" },
  --   T = { "<Cmd>LspTypeDefinition<CR>", "type defintion" },
  --   x = { "<Cmd>cclose<CR>", "close quickfix" },
  --   s = { "<Cmd>Telescope lsp_document_symbols<CR>", "document symbols" },
  --   S = { "<Cmd>Telescope lsp_workspace_symbols<CR>", "workspace symbols" },
  --   l = { "<Cmd>LspTroubleToggle<CR>", "Lsp Trouble toggle" },
  -- },
  -- t = {
  --   name = "+terminal",
  --   [";"] = { "<Cmd>FloatermNew --wintype=popup --height=6<CR>", "terminal" },
  --   g = { "<Cmd>FloatermNew lazygit<CR>", "lazygit" },
  --   t = { "<Cmd>FloatermToggle<CR>", "toggle" },
  --   y = { "<Cmd>FloatermNew ytop<CR>", "ytop" },
  -- },
})

-- 	e = {
-- 		name = '+explorer',
-- 		['<space>'] = {'<Cmd>NvimTreeOpen<CR>', 'open'},
-- 		c = {'<Cmd>NvimTreeClose<CR>', 'close'},
-- 		f = {'<Cmd>NvimTreeFocus<CR>', 'focus'},
-- 		i = {'<Cmd>NvimTreeFindFile<CR>', 'find'},
-- 		p = {'<Cmd>NvimTreeClipboard<CR>', 'clipboard'},
-- 		r = {'<Cmd>NvimTreeRefresh<CR>', 'refresh'},
-- 		s = {'<Cmd>NvimTreeResize<CR>', 'resize'},
-- 		t = {'<Cmd>NvimTreeToggle<CR>', 'toggle'}
-- 	},

-- 	g = {
-- 		name = '+git',
-- 		a = {':G add ', 'stage', silent = false},
-- 		A = {'<Cmd>G add -A<CR>', 'stage-all'},
-- 		b = {':G branch ', 'branch', silent = false},
-- 		B = {'<Cmd>G branch master<CR>', 'branch-to-master'},
-- 		c = {':G commit -m ""', 'commit', silent = false},
-- 		C = {'<Plug>(coc-git-commit)', 'commit-info', silent = false, noremap = false},
-- 		d = {':G rm ', 'delete', silent = false},
-- 		e = {'<Cmd>GitFiles<CR>', 'explorer'},
-- 		f = {':G fetch ', 'fetch', silent = false},
-- 		h = {'<Cmd>G reset HEAD~1<CR>', 'reset-last-commit'},
-- 		H = {'<Cmd>Gitsigns toggle_line_hl<CR>', 'line-highlight'},
-- 		i = {'<Cmd>Gitsigns preview_hunk<CR>', 'preview-hunk'},
-- 		j = {'<Cmd>Gitsigns next_hunk<CR>', 'next-hunk'},
-- 		k = {'<Cmd>Gitsigns prev_hunk<CR>', 'prev-hunk'},
-- 		l = {'<Cmd>CocList commits<CR>', 'commit-list'},
-- 		L = {'<Cmd>CocList bcommits<CR>', 'buffer-commit-list'},
-- 		m = {':G merge ', 'merge', silent = false},
-- 		M = {'<Cmd>G merge origin/master<CR>', 'merge-with-origin/master'},
-- 		p = {'<Cmd>G push<CR>', 'push'},
-- 		P = {'<Cmd>G pull<CR>', 'pull'},
-- 		r = {':G reset ', 'reset', silent = false},
-- 		R = {'<Cmd>G restore .<CR>', 'restore-unstaged'},
-- 		s = {'<Cmd>GitFiles?<CR>', 'status'},
-- 		S = {'<Cmd>G restore -S .<CR>', 'restore-staged'},
-- 		v = {'<Cmd>G revert HEAD~1<CR>', 'revert-last-commit'},
-- 		w = {'<Cmd>Gitsigns toggle_word_diff<CR>', 'word-diff'},
-- 		['>'] = {':GMove ', 'move-current-file', silent = false},
-- 		["'"] = {':GRename ', 'rename-current-file', silent = false},
-- 		['*'] = {'<Cmd>Gitsigns toggle_signs<CR>', 'git-indicators'},
-- 		['#'] = {'<Cmd>Gitsigns toggle_num_hl<CR>', 'num-highlight'},
-- 		['/'] = {'<Cmd>Gitsigns blame_line<CR>', 'line-blame'},
-- 		['+'] = {'<Cmd>Gitsigns stage_hunk<CR>', 'stage-hunk'},
-- 		['-'] = {'<Cmd>Gitsigns unstage_hunk<CR>', 'unstage-hunk'},
-- 		["["] = {'<Cmd>Gitsigns reset_hunk<CR>', 'reset-hunk'},
-- 		["]"] = {'<Cmd>Gitsigns reset_buffer<CR>', 'reset-buffer'}
-- 	},

-- 	-- toggle
-- 	t = {
-- 		name = '+toggle',
-- 		e = {'<Cmd>NvimTreeToggle<CR>', 'explorer'},
-- 		g = {'<Cmd>Gitsigns toggle_signs<CR>', 'git-indicator'},
-- 		i = {'<Cmd>IndentBlanklineToggle<CR>', 'indent-guide'},
-- 	},

-- 	-- windows
-- 	w = {
-- 		name = '+windows',
-- 		h = {'<C-w>h', 'left-window'},
-- 		H = {'<C-w>H', 'move-left'},
-- 		i = {'<Cmd>Windows<CR>', 'list-windows'},
-- 		j = {'<C-w>j', 'bottom-window'},
-- 		J = {'<C-w>J', 'move-down'},
-- 		k = {'<C-w>k', 'top-window'},
-- 		K = {'<C-w>K', 'move-up'},
-- 		l = {'<C-w>l', 'right-window'},
-- 		L = {'<C-w>L', 'move-right'},
-- 		q = {'<C-w>q', 'quit-window'},
-- 		s = {'<C-w>s', 'horizontal-split'},
-- 		v = {'<C-w>v', 'vert-split'},
-- 		w = {'<C-w>w', 'switch-windows'},
-- 		x = {'<C-w>x', 'exchange-windows'},
-- 		['='] = {'<C-w>=', 'make-all-windows-equal-sized'}
-- 	},
