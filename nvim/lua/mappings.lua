local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ","

map("n", "<Space>", "<NOP>")
map("i", "<C-c>", "<Esc>")

vim.cmd([[
  noremap <C-e> 5<C-e>
  noremap <C-y> 5<C-y>
]])

vim.cmd([[
  nmap <F1> :echo<CR>
  imap <F1> <C-o>:echo<CR>
]])

vim.cmd([[
  nnoremap <silent> <C-Up> : resize -2<CR>
  nnoremap <silent> <C-Down> : resize +2<CR>
  nnoremap <silent> <C-Left> : vertical resize -2<CR>
  nnoremap <silent> <C-Right> : vertical resize +2<CR>
]])

map("v", "<", "<gv")
map("v", ">", ">gv")
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprevious<CR>")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "J", ":move '>+1<CR>gv-gv")
map("n", "<leader>h", ":nohlsearch<cr>")
map("n", "<leader>xml", ":%!xmllint --format -<cr>")
map("n", "<leader>fo", ":copen<cr>") -- open quickfix window
map("n", "<leader>fc", ":cclose<cr>") -- close quickfix window
map("n", "<leader>o", ":toggleonly<cr>")
map("n", "<leader>ev", ":vs $myvimrc<cr>")
map("n", "<leader>sv", ":luafile $myvimrc<cr>:echo 'reloaded vimrc!'<cr>")
map("i", "<S-Tab>", [[pumvisible() ? '<C-p>' : '<Tab>']])
map("i", "<Tab>", [[pumvisible() ? '<C-n>' : '<Tab>']])
map("n", "<esc>", ":noh<cr><esc>", { silent = true })
map("n", "<leader>so", ":SymbolsOutline<cr>")

vim.g.which_key_display_names = {
    ["<CR>"] = "↵",
    ["<TAB>"] = "⇆",
    [" "] = "🚀",
}
vim.g.which_key_sep = "→"

local wk = require("which-key")

wk.register({
    ["<leader>"] = { name = "+leader" },
    -- ["<leader>."] = { ":FloatermToggle<cr>", "Toggle terminal" },
    ["<leader>-"] = { ":Lf<cr>", "Start lf" },
    ["<leader><leader>b"] = {
        "<Cmd>lua require('telescope.builtin').builtin()<CR>",
        "telescope builtins",
    },
    ["<leader>?"] = { "<Cmd>lua require('telescope.builtin').oldfiles()<CR>", "recent files" },
    ["<leader>r"] = { "<Cmd>lua require('renamer').rename()<CR>", "rename" },
})

wk.register({
    ["<leader>f"] = {
        name = "+search",
        B = { "<Cmd>:Telescope buffers<CR>", "buffers" },
        f = {
            "<Cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>",
            "find files here",
        },
        F = {
            "<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME', hidden = true })<CR>",
            "find files all",
        },
        D = {
            "<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/Documents' })<CR>",
            "find Docs",
        },
        n = {
            "<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/.dotfiles', hidden = true })<CR>",
            "find nvim config",
        },
        S = {
            "<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>",
            "fuzzy find here",
        },
        h = { "<Cmd>:Telescope help_tags<CR>", "help tags" },
        l = { "<Cmd>:Telescope live_grep<CR>", "live grep" },
        p = { "<Cmd>:Telescope project<CR>", "projects" },
        b = { "<Cmd>:Telescope file_browser<CR>", "projects" },
        s = { "<Cmd>:Telescope grep_string<CR>", "string search" },
        t = { "<Cmd>:Telescope tags<CR>", "tags" },
        r = { "<Cmd>:Telescope registers<CR>", "registers" },
        m = { "<Cmd>:Telescope marks<CR>", "marks" },
        j = { "<Cmd>:Telescope jumplist<CR>", "jumps" },
        d = { "<Cmd>lua require('telescope').extensions.zoxide.list{}<CR>", "zoxide cd" },
        M = {
            "<Cmd>lua require('telescope').extensions.metals.commands()<CR>",
            "metals commands",
        },
        -- c = { "<Cmd>:Telescope neoclip<CR>", "neoclip" },
    },
    -- my floaterm instances ar not acting very well and lagging up. need to troubleshoot.
    -- but wrappers such as broot, btm, and others seem to be okay
    ["<leader>t"] = {
        name = "+terminal",
        t = { "<Cmd>FloatermNew --height=0.3 --width=0.8<CR>", "terminal" },
        -- t = { "<Cmd>FloatermNew --height=0.6 --width=0.9<CR>", "terminal" },
        a = { "<Cmd>FloatermNew --name=ammonite --height=0.4 --width=0.9 amm<CR>", "ammonite" },
        p = { "<Cmd>FloatermNew --name=python --height=0.4 --width=0.9 python<CR>", "python" },
        k = { "<Cmd>FloatermNew --name=k9s --autoclose=2 --height=0.9 --width=0.9 k9s<CR>", "k9s" },
        b = { "<Cmd>FloatermNew --name=btm --autoclose=2 --height=0.9 --width=0.9 btm<CR>", "btm" },
        B = { "<Cmd>FloatermNew --name=broot --autoclose=2 --height=0.9 --width=0.9 broot<CR>", "broot" },
        -- l = { "<Cmd>FloatermNew --name=lazydocker --height=0.9 --width=0.9 ld<CR>", "ld" },
        -- T = { "<Cmd>FloatermToggle<CR>", "toggle" },
    },
    ["<leader>h"] = {
        name = "hop",
        b = { "<cmd>lua require'hop'.hint_char2()<cr>", "Hop to bigram (two characters)" },
        c = { "<cmd>lua require'hop'.hint_char1()<cr>", "Hop to character" },
        l = { "<cmd>lua require'hop'.hint_lines()<cr>", "Hop to line" },
        p = { "<cmd>lua require'hop'.hint_patterns()<cr>", "Hop to pattern" },
        w = { "<cmd>lua require'hop'.hint_words()<cr>", "Hop to word" },
    },
    ["<leader><leader>h"] = {
        name = "+hop around",
        m = { "<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "toggle quick menu" },
        a = { "<Cmd>lua require('harpoon.mark').add_file()<CR>", "harpoon add file" },
        c = { "<Cmd>lua require('harpoon.mark').clear_all()<CR>", "harpoon clear" },
    },
    ["<leader>c"] = {
        name = "+code",
        f = { "<Cmd>lua vim.lsp.buf.formatting()<CR>", "format" },
        n = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
        g = { "<Cmd>lua vim.lsp.buf.signature_help()<CR>", "signature" },
        F = { "<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add folder" },
        h = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "hover" },
        i = { "<Cmd>lua require'telescope.builtin'.lsp_implementations()<CR>", "implementation" },
        D = { "<Cmd>lua require'telescope.builtin'.diagnostics()<CR>", "diagnostics" },
        a = { "<Cmd>lua require'telescope.builtin'.lsp_code_actions()<CR>", "code actions" },
        s = {
            "<Cmd>lua require'telescope.builtin'.lsp_document_symbols()<CR>",
            "document symbols",
        },
        S = {
            "<Cmd>lua require'telescope.builtin'.lsp_workspace_symbols()<CR>",
            "workspace symbols",
        },
        r = { "<Cmd>lua require'telescope.builtin'.lsp_references()<CR>", "references" },
        d = { "<Cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", "lsp definitions" },
        t = {
            "<Cmd>lua require'telescope.builtin'.lsp_type_definitions()<CR>",
            "lsp type definitions",
        },
        m = { "<Cmd>lua require('metals').open_all_diagnostics()<CR>", "metals diagnostics" },
        H = { "<Cmd>lua require('metals').hover_worksheet()<CR>", "hover" },
        c = { "<Cmd>lua require('nvim-comment-frame').add_comment()<CR>", "comment line" },
        C = {
            "<Cmd>lua require('nvim-comment-frame').add_multiline_comment()<CR>",
            "comment multi",
        },
        -- d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "goto definition" },
        -- i = { "<Cmd>lua vim.lsp.buf.implementation()", "implementation" },
        -- r = { "<Cmd>lua vim.lsp.buf.references()<CR>", "references" },
        -- i = { "<Cmd>lua require('metals').toggle_setting('showImplicitArguments')<CR>", "show implicits" },
        -- w = { "<Cmd>lua require('metals').type_of_range()<CR>", "metals type of range" },
    },
    ["<leader>g"] = {
        name = "+git",
        g = { "<Cmd>:LazyGit<CR>", "lazygit" },
        b = { "<Cmd>GitBlameToggle<CR>", "blame" },
        d = { "<Cmd>DiffviewOpen<CR>", "Diff view" },
        D = { "<Cmd>DiffviewClose<CR>", "Diff view close" },
        B = { "<Cmd>:Telescope git_branches<CR>", "git branches" },
        f = { "<Cmd>:Telescope git_files<CR>", "git files" },
    },
    ["<leader>p"] = {
        name = "+preview",
        d = {
            "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
            "Definition Preview",
        },
        i = {
            "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
            "Implementation Preview",
        },
        c = { "<cmd>lua require('goto-preview').close_all_win()<CR>", "Close Preview" },
        r = {
            "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
            "References Preview",
        },
    },
    ["<space>"] = {
        name = "+explorer",
        c = { "<Cmd>NvimTreeClose<CR>", "close" },
        f = { "<Cmd>NvimTreeFocus<CR>", "focus" },
        i = { "<Cmd>NvimTreeFindFile<CR>", "find" },
        p = { "<Cmd>NvimTreeClipboard<CR>", "clipboard" },
        r = { "<Cmd>NvimTreeRefresh<CR>", "refresh" },
        s = { "<Cmd>NvimTreeResize<CR>", "resize" },
        e = { "<Cmd>NvimTreeToggle<CR>", "toggle" },
    },
})

map("n", "<Leader>w", ":write<CR>", { noremap = true })

-- map("n", "<space>ld", [[<cmd>lua vim.diagnostic.open_float(0)<CR>]])
-- map("n", "<space>nd", [[<cmd>lua vim.diagnostic.goto_next()<CR>]])
-- map("n", "<space>pd", [[<cmd>lua vim.diagnostic.goto_prev()<CR>]])

-- w = { "<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", "line diagnostics" },
-- w = { "<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "loc list" },
-- S = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "code action" },
-- S = { "<Cmd>lua vim.lsp.codelens.run()<CR>", "code lens run" },
-- D = {
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
--   name = "+debug",
--   b = { "<Cmd>DebugToggleBreakpoint<CR>", "toggle breakpoint" },
--   c = { "<Cmd>DebugContinue<CR>", "continue" },
--   i = { "<Cmd>DebugStepInto<CR>", "step into" },
--   o = { "<Cmd>DebugStepOver<CR>", "step over" },
--   r = { "<Cmd>DebugToggleRepl<CR>", "toggle repl" },
--   s = { "<Cmd>DebugStart<CR>", "start" },
-- },
-- t = {
--   name = "+terminal",
--   [";"] = { "<Cmd>FloatermNew --wintype=popup --height=6<CR>", "terminal" },
--   t = { "<Cmd>FloatermToggle<CR>", "toggle" },
--   y = { "<Cmd>FloatermNew ytop<CR>", "ytop" },

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
