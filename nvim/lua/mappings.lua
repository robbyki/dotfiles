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

-- zoxide
-- change directory for where editor is to be able to run cool fuzzy findings
-- also helpful when running fuzzy grep with telescope from project root "<leader>sl"
map("n", "<Leader>cd", [[<cmd>lua require'telescope'.extensions.zoxide.list{}<CR>]])

-- Keep search results centred
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "J", "mzJ`z")

-- harpoon to quickly add files to a temporary directory per-session
map("n", "<Leader>hm", [[<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]])
map("n", "<Leader>ha", [[<cmd>lua require("harpoon.mark").add_file()<CR>]])
map("n", "<Leader>hc", [[<cmd>lua require("harpoon.mark").clear_all()<CR>]])

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
map("n", "<leader>st", [[<cmd>lua require('telescope.builtin').tags()<CR>]])
map("n", "<leader>tt", [[<cmd>lua require('telescope.builtin').builtin()<CR>]])
map("n", "<leader>r", [[<cmd>lua require("telescope.builtin").registers()<cr>]])
map("n", "<leader>f", [[<cmd>lua require("telescope").extensions.file_browser.file_browser()<CR>]])

map("n", "<leader>cn", [[<cmd>lua require("renamer").rename()<cr>]])
map("v", "<leader>cn", [[<cmd>lua require("renamer").rename()<cr>]])

-- Hop
-- nice way to force myself from using stupid h and l movements
-- map("n", "h", [[<cmd>lua require'hop'.hint_words()<cr>]])
-- map("n", "l", [[<cmd>lua require'hop'.hint_lines()<cr>]])
-- map("v", "h", [[<cmd>lua require'hop'.hint_words()<cr>]])
-- map("v", "l", [[<cmd>lua require'hop'.hint_lines()<cr>]])

map("n", "<leader><leader>w", "<cmd>lua require'hop'.hint_words()<cr>")
map("v", "<leader><leader>w", "<cmd>lua require'hop'.hint_words()<cr>")
map("n", "<leader><leader>l", "<cmd>lua require'hop'.hint_lines()<cr>")
map("v", "<leader><leader>l", "<cmd>lua require'hop'.hint_lines()<cr>")
map("n", "<leader><leader>c", "<cmd>lua require'hop'.hint_char1()<cr>")
map("v", "<leader><leader>c", "<cmd>lua require'hop'.hint_char1()<cr>")

-- lsp stuff...yes, I need to setup which key plugin before I lose my mind.
map("n", "<space>a", [[<cmd>lua require("metals").open_all_diagnostics()<CR>]])
map("n", "<space>ca", [[<cmd>lua vim.lsp.buf.code_action()<CR>]])
map("n", "<space>cl", [[<cmd>lua vim.lsp.codelens.run()<CR>]])
map("n", "<space>d", [[<cmd>lua vim.diagnostic.setloclist()<CR>]])
map("n", "<space>dK", [[<cmd>lua require'dap'.ui.widgets".hover()<CR>]])
map("n", "<space>dc", [[<cmd>lua require'dap'.continue()<CR>]])
map("n", "<space>ddd", [[<cmd>lua require'dap'.list_breakpoints()<CR>]])
map("n", "<space>dl", [[<cmd>lua require'dap'.run_last()<CR>]])
map("n", "<space>dr", [[<cmd>lua require'dap'.repl.toggle()<CR>)]])
map("n", "<space>dr", [[<cmd>lua require'dap'.repl.toggle()<CR>]])
map("n", "<space>ds", [[<cmd>lua require'dap'.step_into()<CR>]])
map("n", "<space>ds", [[<cmd>lua require'dap'.step_over()<CR>]])
map("n", "<space>ds", [[<cmd>lua require'dap'.ui.variables".scopes()<CR>]])
map("n", "<space>dsi", [[<cmd>lua require'dap'.step_into()<CR>)]])
map("n", "<space>dso", [[<cmd>lua require'dap'.step_over()<CR>]])
map("n", "<space>dt", [[<cmd>lua require'dap'.toggle_breakpoint()<CR>]])
map("n", "<space>e", [[<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>]])
map("n", "<space>f", [[<cmd>lua vim.lsp.buf.formatting()<CR>]])
map("n", "<space>gd", [[<cmd>lua vim.lsp.buf.definition()<CR>]])
map("n", "<space>gi", [[<cmd>lua vim.lsp.buf.implementation()<CR>]])
map("n", "<space>gr", [[<cmd>lua vim.lsp.buf.references()<CR>]])
map("n", "<space>ld", [[<cmd>lua vim.diagnostic.open_float(0)<CR>]])
map("n", "<space>ln", [[<cmd>lua vim.lsp.diagnostic.get_line_diagnostics()<CR>]])
map("n", "<space>nd", [[<cmd>lua vim.diagnostic.goto_next()<CR>]])
map("n", "<space>pd", [[<cmd>lua vim.diagnostic.goto_prev()<CR>]])
map("n", "<space>q", [[<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>]])
map("n", "<space>rn", [[<cmd>lua vim.lsp.buf.rename()<CR>]])
map("n", "<space>sh", [[<cmd>lua vim.lsp.buf.signature_help()<CR>]])
map("n", "<space>st", [[<cmd>lua require('metals').toggle_setting("showImplicitArguments")<CR>]])
map("n", "<space>wa", [[<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>]])
map("n", "<space>ws", [[<cmd>lua require"metals".hover_worksheet()<CR>]])
map("n", "<space>K", [[<cmd>lua vim.lsp.buf.hover()<CR>]])
map("n", "<space>d", [[<cmd>lua require'telescope.builtin'.lsp_definitions()<CR>]])
map("n", "<space>ds", [[<cmd>lua require'telescope.builtin'.lsp_document_symbols()<CR>]])
map("n", "<space>dws", [[<cmd>lua require'telescope.builtin'.lsp_dynamic_workspace_symbols()<CR>]])
map("n", "<space>r", [[<cmd>lua require'telescope.builtin'.lsp_references()<CR>]])
map("n", "<space>ws", [[<cmd>lua require'telescope.builtin'.lsp_workspace_symbols()<CR>]])
map("v", "<space>t", [[<Esc><cmd>lua require("metals").type_of_range()<CR>]])

vim.cmd([[
  nnoremap <silent> <C-Up> : resize -2<CR>
  nnoremap <silent> <C-Down> : resize +2<CR>
  nnoremap <silent> <C-Left> : vertical resize -2<CR>
  nnoremap <silent> <C-Right> : vertical resize +2<CR>
]])

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Tab switch buffer
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprevious<CR>")

-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "J", ":move '>+1<CR>gv-gv")

---- normal-mode mappings
map("n", "<Leader>h", ":nohlsearch<cr>")
map("n", "<Leader>xml", ":%!xmllint --format -<cr>")
map("n", "<Leader>fo", ":copen<cr>") -- open quickfix window
map("n", "<Leader>fc", ":cclose<cr>") -- close quickfix window

map("n", "<leader>o", ":ToggleOnly<CR>")

map("n", "<Leader>ev", ":vs $MYVIMRC<CR>")
map("n", "<Leader>sv", ":luafile $MYVIMRC<CR>:echo 'Reloaded vimrc!'<CR>")

-- completion
map("i", "<S-Tab>", [[pumvisible() ? '<C-p>' : '<Tab>']])
map("i", "<Tab>", [[pumvisible() ? '<C-n>' : '<Tab>']])

map("n", "<Leader>gg", ":LazyGit<CR>")

map("n", "<esc>", ":noh<cr><esc>", { silent = true })

map("n", "<leader>so", ":SymbolsOutline<cr>")
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
})

wk.register({
  a = {
    name = "+actions",
    c = { "<Cmd>ColorizerToggle<CR>", "Bracket Colorizer" },
    s = { '<Cmd>let @/ = ""<CR>', "Remove search highlight" },
    w = { "<Cmd>StripWhitespace<CR>", "Strip whitespace" },
    m = { "<Cmd>MarkdownPreviewToggle<CR>", "Markdown preview" },
  },
  b = {
    name = "+buffers",
    d = { "<Cmd>BufferClose<CR>", "Close Buffer" },
    D = { "<Cmd>BufferCloseAllButCurrent<CR>", "Close all but current" },
    s = { "<Cmd>Dashboard<CR>", "Dashboard" },
    p = { "<Cmd>BufferPick<CR>", "Pick buffer" },
    h = { "<Cmd>BufferMovePrevious<CR>", "Buffer move left" },
    l = { "<Cmd>BufferMoveNext<CR>", "Buffer move right" },
    b = { "<Cmd>BufferOrderByDirectory<CR>", "Buffer order by directory" },
    L = { "<Cmd>BufferCloseBuffersRight<CR>", "Close buffers on right" },
    H = { "<Cmd>BufferCloseBuffersRight<CR>", "Close buffers on left" },
  },
  D = {
    name = "+debug",
    b = { "<Cmd>DebugToggleBreakpoint<CR>", "toggle breakpoint" },
    c = { "<Cmd>DebugContinue<CR>", "continue" },
    i = { "<Cmd>DebugStepInto<CR>", "step into" },
    o = { "<Cmd>DebugStepOver<CR>", "step over" },
    r = { "<Cmd>DebugToggleRepl<CR>", "toggle repl" },
    s = { "<Cmd>DebugStart<CR>", "start" },
  },
  F = {
    name = "+fold",
    ["O"] = { "<Cmd>set foldlevel=20<CR>", "open all" },
    ["C"] = { "<Cmd>set foldlevel=0<CR>", "close all" },
    ["c"] = { "<Cmd>foldclose<CR>", "close" },
    ["o"] = { "<Cmd>foldopen<CR>", "open" },
    ["1"] = { "<Cmd>set foldlevel=1<CR>", "level1" },
    ["2"] = { "<Cmd>set foldlevel=2<CR>", "level2" },
    ["3"] = { "<Cmd>set foldlevel=3<CR>", "level3" },
    ["4"] = { "<Cmd>set foldlevel=4<CR>", "level4" },
    ["5"] = { "<Cmd>set foldlevel=5<CR>", "level5" },
    ["6"] = { "<Cmd>set foldlevel=6<CR>", "level6" },
  },
  s = {
    name = "+search",
    b = { "<Cmd>lua require('telescope.builtin').buffers()<CR>", "buffers" },
    ["?"] = { "<Cmd>lua require('telescope.builtin').oldfiles()<CR>", "recent files" },
    f = {
      "<Cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>",
      "find files here",
    },
    F = {
      "<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME', hidden = true })<CR>",
      "find files all",
    },
    B = {
      "<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>",
      "fuzzy find here",
    },
    h = { "<Cmd>lua require('telescope.builtin').help_tags()<CR>", "help tags" },
    l = { "<Cmd>lua require('telescope.builtin').live_grep()<CR>", "live grep" },
    p = { "<Cmd>lua require('telescope').extensions.project.project({})<CR>", "projects" },
    s = { "<Cmd>lua require('telescope.builtin').grep_string()<CR>", "string search" },
    t = { "<Cmd>lua require('telescope.builtin').tags()<CR>", "tags" },

    d = { "<Cmd>Telescope lsp_document_diagnostics<CR>", "document_diagnostics" },
    D = { "<Cmd>Telescope lsp_workspace_diagnostics<CR>", "workspace_diagnostics" },
    p = { "<Cmd>Telescope find_files<CR>", "files" },
    z = { "<Cmd>Telescope current_buffer_fuzzy_find<CR>", "files" },
    h = { "<Cmd>Telescope command_history<CR>", "history" },
    i = { "<Cmd>Telescope media_files<CR>", "media files" },
    m = { "<Cmd>Telescope marks<CR>", "marks" },
    M = { "<Cmd>Telescope man_pages<CR>", "man_pages" },
    o = { "<Cmd>Telescope vim_options<CR>", "vim_options" },
    t = { "<Cmd>Telescope live_grep<CR>", "Project wide search" },
    T = { "<Cmd>Telescope grep_string<CR>", "Current buffer search" },
    w = { "<Cmd>Telescope file_browser<CR>", "File Browser" },
    u = { "<Cmd>Telescope colorscheme<CR>", "colorschemes" },
    s = { "<Cmd>call SearchString()<CR>", "Search a string" },
    S = { "<Cmd>CtrlSFToggle<CR>", "Search a string toggle" },
    ["."] = { [[<Cmd>lua require('telescope.builtin').filetypes()<CR>]], "filetypes" },
  },
  S = {
    name = "+Session",
    s = { "<Cmd>Dashboard<CR>", "Dashboard" },
  },
  g = {
    name = "+git",
    -- b = { "<Cmd>GitBlameToggle<CR>", "blame" },
    -- d = { "<Cmd>DiffviewOpen<CR>", "Diff view" },
    -- D = { "<Cmd>DiffviewClose<CR>", "Diff view close" },
    b = { [[<Cmd>lua require('telescope.builtin').git_branches()<CR>]], "git branches" },
    f = { [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], "git files" },
  },
  l = {
    name = "+lsp",
    a = { "<Cmd>Lspsaga code_action<CR>", "code action" },
    A = { "<Cmd>Lspsaga range_code_action<CR>", "selected action" },
    d = { "<Cmd>Telescope lsp_document_diagnostics<CR>", "document diagnostics" },
    D = { "<Cmd>Telescope lsp_workspace_diagnostics<CR>", "workspace diagnostics" },
    f = { "<Cmd>LspFormatting<CR>", "format" },
    v = { "<Cmd>LspVirtualTextToggle<CR>", "lsp toggle virtual text" },
    L = { "<Cmd>Lspsaga show_line_diagnostics<CR>", "line_diagnostics" },
    p = { "<Cmd>Lspsaga preview_definition<CR>", "preview definition" },
    q = { "<Cmd>Telescope quickfix<CR>", "quickfix" },
    r = { "<Cmd>Lspsaga rename<CR>", "rename" },
    T = { "<Cmd>LspTypeDefinition<CR>", "type defintion" },
    x = { "<Cmd>cclose<CR>", "close quickfix" },
    s = { "<Cmd>Telescope lsp_document_symbols<CR>", "document symbols" },
    S = { "<Cmd>Telescope lsp_workspace_symbols<CR>", "workspace symbols" },
    l = { "<Cmd>LspTroubleToggle<CR>", "Lsp Trouble toggle" },
  },
  t = {
    name = "+terminal",
    [";"] = { "<Cmd>FloatermNew --wintype=popup --height=6<CR>", "terminal" },
    g = { "<Cmd>FloatermNew lazygit<CR>", "lazygit" },
    t = { "<Cmd>FloatermToggle<CR>", "toggle" },
    y = { "<Cmd>FloatermNew ytop<CR>", "ytop" },
  },
}, { prefix = "<leader>" })

-- wk.register({ ['<leader>'] = {
-- 	-- buffers
-- 	b = {
-- 		name = '+buffers',
-- 		['1'] = {'<Cmd>BufferLineGoToBuffer 1<CR>', 'buffer-1'},
-- 		['2'] = {'<Cmd>BufferLineGoToBuffer 2<CR>', 'buffer-2'},
-- 		['3'] = {'<Cmd>BufferLineGoToBuffer 3<CR>', 'buffer-3'},
-- 		['4'] = {'<Cmd>BufferLineGoToBuffer 4<CR>', 'buffer-4'},
-- 		['5'] = {'<Cmd>BufferLineGoToBuffer 5<CR>', 'buffer-5'},
-- 		['6'] = {'<Cmd>BufferLineGoToBuffer 6<CR>', 'buffer-6'},
-- 		['7'] = {'<Cmd>BufferLineGoToBuffer 7<CR>', 'buffer-7'},
-- 		['8'] = {'<Cmd>BufferLineGoToBuffer 8<CR>', 'buffer-8'},
-- 		['9'] = {'<Cmd>BufferLineGoToBuffer 9<CR>', 'buffer-9'},
-- 		a = {'<Cmd>BufferLineSortByName<CR>', 'sort-by-name'},
-- 		b = {'<Cmd>BufferLineMovePrev<CR>', 'move-buffer-back'},
-- 		c = {'<Cmd>BufferLinePick<CR>', 'choose-buffer'},
-- 		d = {'<Cmd>BufferLineSortByDirectory<CR>', 'sort-by-dir'},
-- 		e = {'<Cmd>BufferLineSortByExtension<CR>', 'sort-by-ext'},
-- 		f = {'<Cmd>BufferLineMoveNext<CR>', 'move-buffer-forward'},
-- 		l = {'<Cmd>ls<CR>', 'list-buffers'},
-- 		L = {'<Cmd>BLines<CR>', 'lines'},
-- 		n = {'<Cmd>BufferLineCycleNext<CR>', 'next-open-buffer'},
-- 		N = {'<Cmd>bn!<CR>', 'next-buffer-id'},
-- 		p = {'<Cmd>BufferLineCyclePrev<CR>', 'prev-open-buffer'},
-- 		P = {'<Cmd>bp!<CR>', 'prev-buffer-id'},
-- 		s = {':sp ', 'horizontal-split-file', silent = false},
-- 		S = {':sp<CR>', 'horizontal-split'},
-- 		t = {'<Cmd>BufferLineSortByTabs<CR>', 'sort-by-tabs'},
-- 		u = {'<Cmd>BufferLineSortByNumber<CR>', 'sort-by-number'},
-- 		v = {':vs ', 'vert-split-file', silent = false},
-- 		V = {':vs<CR>', 'vert-split'},
-- 		z = {'<Cmd>BufferLineSortBySize<CR>', 'sort-by-size'},
-- 		['['] = {'<Cmd>vert res -5<CR>', 'width-5'},
-- 		[']'] = {'<Cmd>vert res +5<CR>', 'width+5'},
-- 		['+'] = {'<Cmd>res +5<CR>', 'height+5'},
-- 		['-'] = {'<Cmd>res -5<CR>', 'height-5'},
-- 		['/'] = {'<Cmd>Buffers<CR>', 'find-buffer'},
-- 		['.'] = {'<Cmd>SessionSave<CR>', 'save-session'},
-- 		[','] = {'<Cmd>SessionLoad<CR>', 'load-session'},
-- 		[';'] = {'<Cmd>enew<CR>', 'new-buffer'},
-- 	},
--
-- 	-- nvimtree
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
--
-- 	-- fzf
-- 	f = {
-- 		name = '+find',
-- 		['/'] = {'<Cmd>History/<CR>', 'search-history'},
-- 		[':'] = {'<Cmd>History:<CR>', 'command-history'},
-- 		b = {'<Cmd>Buffers<CR>', 'buffers'},
-- 		c = {'<Cmd>Commits<CR>', 'commits'},
-- 		C = {'<Cmd>BCommits<CR>', 'commits-in-buffer'},
-- 		f = {'<Cmd>Files<CR>', 'files'},
-- 		g = {'<Cmd>GFiles<CR>', 'git-files'},
-- 		h = {'<Cmd>History<CR>', 'file-history'},
-- 		l = {'<Cmd>BLines<CR>', 'lines-in-buffer'},
-- 		L = {'<Cmd>Lines<CR>', 'lines-in-dir'},
-- 		m = {'<Cmd>Marks<CR>', 'marks'},
-- 		o = {'<Cmd>Colors<CR>', 'colorschemes'},
-- 		r = {'<Cmd>Rg<CR>', 'ripgrep'},
-- 		s = {'<Cmd>GFiles?<CR>', 'git-status'},
-- 		t = {'<Cmd>BTags<CR>', 'tags-in-buffer'},
-- 		T = {'<Cmd>Tags<CR>', 'tags-in-dir'},
-- 		w = {'<Cmd>Windows<CR>', 'windows'}
-- 	},
--
-- 	-- Git
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
--
-- 	-- lsp (coc)
-- 	l = {
-- 		name = '+lsp',
-- 		['('] = {'<Plug>(coc-funcobj-i)', 'insert-func', silent = false, noremap = false},
-- 		[')'] = {'<Plug>(coc-funcobj-a)', 'append-func', silent = false, noremap = false},
-- 		['['] = {'<Plug>(coc-classobj-i)', 'insert-class', silent = false, noremap = false},
-- 		[']'] = {'<Plug>(coc-classobj-a)', 'append-class', silent = false, noremap = false},
-- 		a = {'<Plug>(coc-codeaction)', 'codeaction', noremap = false, silent = false},
-- 		A = {'<Plug>(coc-codeaction-selected)', 'codeaction-selected', noremap = false, silent = false},
-- 		c = {'<Cmd>CocList commands<CR>', 'commands', noremap = false, silent = false},
-- 		d = {'<Plug>(coc-definition)', 'definition', noremap = false, silent = false},
-- 		e = {'<Cmd>CocList diagnostics<CR>', 'diagnostics', noremap = false, silent = false},
-- 		E = {'<Cmd>CocList extensions<CR>', 'extensions', noremap = false, silent = false},
-- 		f = {'<Plug>(coc-format)', 'format', noremap = false, silent = false},
-- 		F = {'<Plug>(coc-format-selected)', 'format-selected', noremap = false, silent = false},
-- 		i = {'<Plug>(coc-implementation)', 'implementation', noremap = false, silent = false},
-- 		j = {'<Plug>(coc-diagnostic-next)', 'next-error', noremap = false, silent = false},
-- 		k = {'<Plug>(coc-diagnostic-prev)', 'prev-error', noremap = false, silent = false},
-- 		m = {'<Cmd>CocList marketplace<CR>', 'marketplace', noremap = false, silent = false},
-- 		o = {'<Cmd>CocList outline<CR>', 'outline', noremap = false, silent = false},
-- 		p = {'<Cmd>CocCommand prettier.formatFile<CR>', 'prettier', noremap = false, silent = false},
-- 		r = {'<Plug>(coc-rename)', 'rename', noremap = false, silent = false},
-- 		R = {'<Plug>(coc-references)', 'references', noremap = false, silent = false},
-- 		s = {'<Cmd>CocList -I symbols<CR>', 'symbols', noremap = false, silent = false},
-- 		S = {'<Plug>(coc-convert-snippet)', 'convert-to-snippet', mode = 'v', noremap = false, silent = false},
-- 		t = {'<Plug>(coc-type-definition)', 'typedef', noremap = false, silent = false},
-- 		q = {'<Plug>(coc-fix-current)', 'quickfix', noremap = false, silent = false}
-- 	},
--
-- 	-- toggle
-- 	t = {
-- 		name = '+toggle',
-- 		e = {'<Cmd>NvimTreeToggle<CR>', 'explorer'},
-- 		g = {'<Cmd>Gitsigns toggle_signs<CR>', 'git-indicator'},
-- 		i = {'<Cmd>IndentBlanklineToggle<CR>', 'indent-guide'},
-- 	},
--
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
--
-- 	-- vimtex
-- 	x = {
-- 		name = '+vimtex',
-- 		c = {'<Cmd>VimtexCompile<CR>', 'compile'},
-- 		C = {'<Cmd>VimtexClean<CR>', 'clean-files'},
-- 		d = {'<Cmd>VimtexClearCache<CR>', 'clear-cache'},
-- 		e = {'<Cmd>VimtexErrors<CR>', 'errors'},
-- 		i = {'<Cmd>VimtexImapsList<CR>', 'mappings'},
-- 		l = {'<Cmd>VimtexLog<CR>', 'compile-log'},
-- 		p = {'<Cmd>VimtexDocPackage<CR>', 'package-docs'},
-- 		r = {'<Cmd>VimtexReload<CR>', 'reload'},
-- 		s = {'<Cmd>VimtexStatus<CR>', 'compile-status'},
-- 		S = {'<Cmd>VimtexStop<CR>', 'stop-compiling'},
-- 		t = {'<Cmd>VimtexTocToggle<CR>', 'toggle-toc'},
-- 		v = {'<Cmd>VimtexView<CR>', 'view'}
-- 	}
-- },
--
-- 	-- new file
-- 	['<leader>,'] = {'<Cmd>enew<CR>', 'new-file'},
--
-- 	-- finder
-- 	['<leader>.'] = {'<Cmd>Files<CR>', 'find-file'},
--
-- 	-- comment
-- 	['<leader>/'] = {'<Cmd>Comment<CR>', 'comment'},
--
-- 	-- dashboard
-- 	['<leader>;'] = {'<Cmd>Dashboard<CR>', 'dashboard'},
--
-- 	-- strip whitespace
-- 	['<leader>s'] = {'<Cmd>StripWhitespace<CR>', 'strip-whitespace'},
-- })
