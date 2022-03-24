local map = require("utils").map

vim.g.mapleader = ","

-- bigger scrolling increments
vim.cmd([[
 noremap <C-e> 5<C-e>
 noremap <C-y> 5<C-y>
]])

-- Rezize vim panes
vim.cmd([[
 nnoremap <silent> <C-Up> : resize -2<CR>
 nnoremap <silent> <C-Down> : resize +2<CR>
 nnoremap <silent> <C-Left> : vertical resize -2<CR>
 nnoremap <silent> <C-Right> : vertical resize +2<CR>
]])

map("n", "<Space>", "<Nop>")
map("i", "<C-c>", "<Esc>")
map("n", "<CR>", "<cmd>FineCmdline<CR>")
map("v", "<", "<gv")
map("v", ">", ">gv")
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprevious<CR>")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "J", ":move '>+1<CR>gv-gv")
map("n", "<Esc><Esc>", ":nohlsearch<CR>")
map("n", "<leader>n", ":set number! norelativenumber<CR>")
map("n", "<leader>fo", ":copen<CR>") -- open quickfix window
map("n", "<leader>ev", ":vs $myvimrc<CR>")
map("n", "<leader>sv", ":luafile $myvimrc<CR>:echo 'reloaded vimrc!'<CR>")
map("n", "<esc>", ":noh<CR><esc>", { silent = true })
map("n", "<Leader>w", ":write<CR>", { noremap = true })
map("n", "<leader>so", ":SymbolsOutline<CR>")
map("n", "n", "nzzzv", {})
map("n", "N", "Nzzzv", {})
map("n", "<leader>d", ":bd<CR>")
map("n", "<leader>L", "<Cmd>lua require('plugins.toggleterm').lf_toggle()<CR>")
map("n", "<leader>gO", "<Cmd>lua require'gitlinker'.get_repo_url({ action_callback = require'gitlinker.actions'.open_in_browser})<CR>")
map("n", "<leader>go", "<Cmd>lua require'gitlinker'.get_buf_range_url('n', { action_callback = require'gitlinker.actions'.open_in_browser})<CR>")
map("n", "Q", "<Nop>")

-- Trouble
map("n", "<leader>xx", "<cmd>trouble<cr>")
map("n", "<leader>xw", "<cmd>trouble workspace_diagnostics<cr>")
map("n", "<leader>xd", "<cmd>trouble document_diagnostics<cr>")
map("n", "<leader>xl", "<cmd>trouble loclist<cr>")
map("n", "<leader>xq", "<cmd>trouble quickfix<cr>")
map("n", "<leader>xc", "<cmd>trouble close<cr>")
map("n", "<leader>xr", "<cmd>trouble refresh<cr>")
map("n", "<leader>xt", "<cmd>trouble toggle<cr>")
map("n", "gR", "<cmd>trouble lsp_references<cr>")

vim.g.which_key_display_names = {
    ["<CR>"] = "↵",
    ["<TAB>"] = "⇆",
    [" "] = "🚀",
}
vim.g.which_key_sep = "→"

local wk = require("which-key")

local function cmd(s)
    return "<cmd>" .. s .. "<cr>"
end

-- Important main keymaps I use often
wk.register({
    ["<leader>"] = { name = "+leader" },
    ["<leader><leader>b"] = { [[<Cmd>lua require('telescope.builtin').builtin()<CR>]], "telescope builtins" },
    ["<leader>?"] = { [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], "recent files" },
    ["<leader>\\"] = { cmd("set wrap!"), "line wrap" },
})

wk.register({
    ["<leader>f"] = {
        name = "+search",
        ["/"] = { [[<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], "fuzzy find" },
        B = { [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], "buffers" },
        C = { [[<Cmd>lua require('telescope').extensions.zoxide.list()<CR>]], "zoxide cd" },
        D = { [[<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/dev' })<CR>]], "find in dev" },
        S = { [[<Cmd>lua require('telescope.builtin').grep_string()<CR>]], "string search" },
        b = { [[<Cmd>lua require('telescope').extensions.file_browser.file_browser<CR>]], "file browser" },
        d = { [[<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/.dotfiles', hidden = true })<CR>]], "dotfiles" },
        f = { [[<Cmd>lua require('telescope.builtin').find_files({ hidden = true, preview = true })<CR>]], "find files here" },
        h = { [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], "help tags" },
        j = { [[<Cmd>lua require('telescope.builtin').jumplist()<CR>]], "jumps" },
        l = { [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], "live grep" },
        m = { [[<Cmd>lua require('telescope.builtin').marks()<CR>]], "marks" },
        n = { [[<cmd>lua require('plugins.telescope').edit_neovim()<CR>]], "dotfiles" },
        p = { [[<Cmd>lua require'telescope'.extensions.project.project{}<CR>]], "projects" },
        r = { [[<Cmd>lua require('telescope.builtin').registers()<CR>]], "registers" },
        s = { [[<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/bin', hidden = true })<CR>]], "scripts" },
        t = { [[<Cmd>lua require('telescope.builtin').tags()<CR>]], "tags" },
        z = { [[<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/.oh-my-zsh' })<CR>]], "find oh-my-zsh" },
    },
    ["<leader>i"] = {
        name = "+insert",
        d = { [[i<C-R>=strftime('%Y-%m-%d')<CR><Esc>]], "Insert Current Time" },
    },
    ["<leader>t"] = {
        name = "+terminal",
        b = { [[<Cmd>lua require('plugins.toggleterm').broot_toggle()<CR>]], "broot" },
        k = { [[<Cmd>lua require('plugins.toggleterm').k9s_toggle()<CR>]], "k9s" },
        t = { [[<Cmd>ToggleTerm<CR>]], "terminal" },
    },
    ["<leader>h"] = {
        name = "hop",
        b = { [[<Cmd>lua require'hop'.hint_char2()<CR>]], "Hop to bigram (two characters)" },
        c = { [[<Cmd>lua require'hop'.hint_char1()<CR>]], "Hop to character" },
        l = { [[<Cmd>lua require'hop'.hint_lines()<CR>]], "Hop to line" },
        p = { [[<Cmd>lua require'hop'.hint_patterns()<CR>]], "Hop to pattern" },
        w = { [[<Cmd>lua require'hop'.hint_words()<CR>]], "Hop to word" },
    },
    -- ["<leader>H"] = {
    --     name = "+harpoon",
    --     m = { "<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "toggle quick menu" },
    --     a = { "<Cmd>lua require('harpoon.mark').add_file()<CR>", "harpoon add file" },
    --     c = { "<Cmd>lua require('harpoon.mark').clear_all()<CR>", "harpoon clear" },
    -- },
    ["<leader>M"] = {
        name = "+markdown",
        p = { [[<Cmd>:MarkdownPreview<CR>]], "markdown preview" },
        t = { [[<Cmd>:MarkdownPreviewToggle<CR>]], "markdown toggle" },
    },
    ["<leader>m"] = {
        name = "+metals",
        m = { [[<Cmd>lua require('telescope').extensions.metals.commands()<CR>]], "metals commands" },
        d = { [[<Cmd>lua require('metals').open_all_diagnostics()<CR>]], "metals diagnostics" },
        h = { [[<Cmd>lua require('metals').hover_worksheet()<CR>]], "hover" },
    },
    ["<leader>g"] = {
        name = "+git",
        c = { [[<Cmd>lua require('plugins.telescope').my_git_commits()<CR>]], "git commits delta" },
        s = { [[<Cmd>:Telescope git_status<CR>]], "git status" },
        g = { [[<Cmd>lua require('plugins.toggleterm').lazygit_toggle()<CR>]], "lazygit" },
        b = { [[<Cmd>GitBlameToggle<CR>]], "blame" },
        d = { [[<Cmd>DiffviewOpen<CR>]], "diff view open" },
        D = { [[<Cmd>DiffviewClose<CR>]], "diff view close" },
        B = { [[<Cmd>:Telescope git_branches<CR>]], "git branches" },
        f = { [[<Cmd>:Telescope git_files<CR>]], "git files" },
    },
    ["<leader>P"] = {
        name = "Packer",
        c = { [[<Cmd>PackerCompile<CR>]], "compile" },
        i = { [[<Cmd>PackerInstall<CR>]], "install" },
        s = { [[<Cmd>PackerSync<CR>]], "sync" },
        S = { [[<Cmd>PackerStatus<CR>]], "status" },
        u = { [[<Cmd>PackerUpdate<CR>]], "update" },
    },
    ["<leader>p"] = {
        name = "+preview",
        d = { [[<Cmd>lua require('goto-preview').goto_preview_definition()<CR>]], "definition preview" },
        i = { [[<Cmd>lua require('goto-preview').goto_preview_implementation()<CR>]], "implementation preview" },
        c = { [[<Cmd>lua require('goto-preview').close_all_win()<CR>]], "close preview" },
        r = { [[<Cmd>lua require('goto-preview').goto_preview_references()<CR>]], "references preview" },
    },
    ["<leader>y"] = {
        name = "+yaml",
        s = { [[:call SearchYamlKey()<CR>]], "search key (e.g. level1 > level2)" },
    },
    ["<space>"] = {
        name = "+explorer",
        c = { [[<Cmd>NvimTreeClose<CR>]], "close" },
        f = { [[<Cmd>NvimTreeFocus<CR>]], "focus" },
        i = { [[<Cmd>NvimTreeFindFile<CR>]], "find" },
        p = { [[<Cmd>NvimTreeClipboard<CR>]], "clipboard" },
        r = { [[<Cmd>NvimTreeRefresh<CR>]], "refresh" },
        e = { [[<Cmd>NvimTreeToggle<CR>]], "toggle" },
    },
    ["<leader>c"] = {
        name = "+code",
        c = { [[<Cmd>lua require('nvim-comment-frame').add_comment()<CR>]], "comment line" },
        C = { [[<Cmd>lua require('nvim-comment-frame').add_multiline_comment()<CR>]], "comment multi" },
        r = { [[<Cmd>lua require('renamer').rename()<CR>]], "rename" },
        i = { [[<Cmd>lua require("go.format").goimport()<CR>]], "go imports" },
    },
    ["<leader>l"] = {
        name = "+lsp",
        L = { [[<Cmd>:LspInfo<CR>]], "lsp info" },
        F = { [[<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>]], "add folder" },
        K = { [[<Cmd>lua vim.lsp.buf.hover()<CR>]], "hover" },
        a = { [[<cmd>lua vim.lsp.buf.code_action()<CR>]], "code action" },
        d = { [[<cmd>lua require('plugins.lsp').show_line_diagnostics()<CR>]], "show line diagnostics" },
        f = { [[<Cmd>lua vim.lsp.buf.formatting()<CR>]], "format" },
        g = { [[<Cmd>lua vim.lsp.buf.signature_help()<CR>]], "signature" },
        l = { [[<cmd>lua vim.diagnostic.goto_next()<CR>]], "next diagnostic" },
        h = { [[<cmd>lua vim.diagnostic.goto_prev()<cr>]], "prev diagnostic" },
        C = { [[<Cmd>lua vim.lsp.codelens.run()<CR>]], "code lens run" },
        I = { [[<Cmd>lua vim.lsp.buf.definition()<CR>]], "goto definition" },
        R = { [[<Cmd>lua vim.lsp.buf.references()<CR>]], "references" },
        D = { [[<Cmd>lua vim.diagnostic.open_float()<CR>]], "open diagnostics" },
        i = { [[<Cmd>lua vim.buf.lsp.implementation()<CR>]], "implementation" },
        s = { [[<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>]], "loc list" },
    },
    ["<leader><leader>l"] = {
        i = { [[<Cmd>lua require'telescope.builtin'.lsp_implementations()<CR>]], "telescope implementations" },
        d = { [[<Cmd>lua require'telescope.builtin'.diagnostics()<CR>]], "telescope line diagnostics" },
        a = { [[<Cmd>lua require'telescope.builtin'.lsp_code_actions()<CR>]], "telescope code actions" },
        s = { [[<Cmd>lua require'telescope.builtin'.lsp_document_symbols()<CR>]], "telescope document symbols" },
        S = { [[<Cmd>lua require'telescope.builtin'.lsp_workspace_symbols()<CR>]], "telescope workspace symbols" },
        r = { [[<Cmd>lua require'telescope.builtin'.lsp_references()<CR>]], "telescope references" },
        f = { [[<Cmd>lua require'telescope.builtin'.lsp_definitions()<CR>]], "definitions" },
        t = { [[<Cmd>lua require'telescope.builtin'.lsp_type_definitions()<CR>]], "type definitions" },
    },
    ["<leader>D"] = {
        name = "+debug",
        C = { [[<Cmd>lua require'dap'.continue()<CR>]], "dap continue" }, -- works=yes
        D = { [[<Cmd>lua require'dapui'.disconnect()<CR>]], "dap disconnect" },
        O = { [[<Cmd>lua require'dap'.step_over()<CR>]], "dap step over" },
        R = { [[<Cmd>lua require'dap'.repl.open()<CR>]], "dap repl open" },
        b = { [[<Cmd>lua require'dap'.toggle_breakpoint()<CR>]], "dap toggle breakpoint" }, --works=yes
        c = { [[<Cmd>lua require'telescope'.extensions.dap.commands{}<CR>]], "dap commands" },
        e = { [[<Cmd>lua require'dapui'.eval()<CR>]], "dap evaluate" },
        f = { [[<Cmd>lua require'telescope'.extensions.dap.frames{}<CR>]], "telescope dap frames" }, --works=yes
        g = { [[<Cmd>lua require'telescope'.extensions.dap.configurations{}<CR>]], "telescope dap configurations" }, --works=yes
        h = { [[<Cmd>lua require'dap.ui.variables'.hover()<CR>]], "dap hover" },
        i = { [[<Cmd>lua require'dap'.step_into()<CR>]], "dap step into" },
        l = { [[<Cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>]], "telescope dap list breakpoints" }, --works=yes
        o = { [[<Cmd>lua require'dap'.step_out()<CR>]], "dap step out" }, -- works=yes
        r = { [[<Cmd>lua require'dap'.repl.toggle()<CR>]], "dap repl toggle" }, -- works=yes
        t = { [[<Cmd>lua require'dap'.terminate()<CR>]], "dap terminate" }, --works=y()
        u = { [[<Cmd>lua require'dapui'.toggle()<CR>]], "dap open ui" }, --works=yes
        v = { [[<Cmd>lua require'telescope'.extensions.dap.variables{}<CR>]], "telescope dap variables" }, --works=yes
        x = { [[<Cmd>lua require'dap'.close()<CR>]], "dap close" }, --works=no
    },
})
