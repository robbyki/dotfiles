local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ","

vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true })
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
map("n", "<Esc><Esc>", ":nohlsearch<CR>")
map("n", "<leader>n", ":set number! norelativenumber<CR>")
map("n", "<leader>xml", ":%!xmllint --format -<CR>")
map("n", "<leader>fo", ":copen<CR>") -- open quickfix window
map("n", "<leader>fc", ":cclose<CR>") -- close quickfix window
map("n", "<leader>ev", ":vs $myvimrc<CR>")
map("n", "<leader>sv", ":luafile $myvimrc<CR>:echo 'reloaded vimrc!'<CR>")
map("i", "<S-Tab>", [[pumvisible() ? '<C-p>' : '<Tab>']])
map("i", "<Tab>", [[pumvisible() ? '<C-n>' : '<Tab>']])
map("n", "<esc>", ":noh<CR><esc>", { silent = true })
map("n", "<Leader>w", ":write<CR>", { noremap = true })
map("n", "<leader>so", ":SymbolsOutline<CR>")
map("n", "<leader>F", ":Format<CR>")

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

wk.register({
    ["<leader>"] = { name = "+leader" },
    ["<leader>-"] = { ":Lf<CR>", "Start lf" },
    ["<leader><leader>b"] = {
        "<Cmd>lua require('telescope.builtin').builtin()<CR>",
        "telescope builtins",
    },
    ["<leader>?"] = { "<Cmd>lua require('telescope.builtin').oldfiles()<CR>", "recent files" },
    ["<leader>r"] = { "<Cmd>lua require('renamer').rename()<CR>", "rename" },
    ["<leader>\\"] = { cmd("set wrap!"), "line wrap" },
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
        d = {
            "<Cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/.dotfiles', hidden = true })<CR>",
            "dotfiles",
        },
        s = {
            "<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>",
            "fuzzy find here",
        },
        h = { "<Cmd>lua require('telescope.builtin').help_tags()<CR>", "help tags" },
        l = { "<Cmd>:Telescope live_grep<CR>", "live grep" },
        p = { "<Cmd>lua require'telescope'.extensions.project.project{}<CR>", "projects" },
        b = { "<Cmd>:require'telescope'.extensions.file_browser.file_browser<CR>", "file browser" },
        S = { "<Cmd>:Telescope grep_string<CR>", "string search" },
        t = { "<Cmd>:Telescope tags<CR>", "tags" },
        r = { "<Cmd>:Telescope registers<CR>", "registers" },
        m = { "<Cmd>:Telescope marks<CR>", "marks" },
        j = { "<Cmd>:Telescope jumplist<CR>", "jumps" },
        C = { "<Cmd>lua require('telescope').extensions.zoxide.list{}<CR>", "zoxide cd" },
        -- c = { "<Cmd>:Telescope neoclip<CR>", "neoclip" },
    },
    ["<leader>i"] = {
        name = "+insert",
        d = { "i<C-R>=strftime('%Y-%m-%d')<CR><Esc>", "Insert Current Time" },
    },
    ["<leader>t"] = {
        name = "+terminal",
        t = { "<Cmd>FloatermNew --height=0.3 --width=0.8<CR>", "terminal" },
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
        b = { "<Cmd>lua require'hop'.hint_char2()<CR>", "Hop to bigram (two characters)" },
        c = { "<Cmd>lua require'hop'.hint_char1()<CR>", "Hop to character" },
        l = { "<Cmd>lua require'hop'.hint_lines()<CR>", "Hop to line" },
        p = { "<Cmd>lua require'hop'.hint_patterns()<CR>", "Hop to pattern" },
        w = { "<Cmd>lua require'hop'.hint_words()<CR>", "Hop to word" },
    },
    ["<leader>H"] = {
        name = "+harpoon",
        m = { "<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "toggle quick menu" },
        a = { "<Cmd>lua require('harpoon.mark').add_file()<CR>", "harpoon add file" },
        c = { "<Cmd>lua require('harpoon.mark').clear_all()<CR>", "harpoon clear" },
    },
    ["<leader>m"] = {
        name = "+metals",
        m = { "<Cmd>lua require('telescope').extensions.metals.commands()<CR>", "metals commands" },
        d = { "<Cmd>lua require('metals').open_all_diagnostics()<CR>", "metals diagnostics" },
        h = { "<Cmd>lua require('metals').hover_worksheet()<CR>", "hover" },
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
    ["<leader>y"] = {
        name = "+yaml",
        s = { ":call SearchYamlKey()<CR>", "search key (e.g. level1 > level2)" },
    },
    ["<leader>D"] = {
        name = "+debug",
        C = { "<Cmd>lua require'dap'.close()<CR>", "Close" },
        D = { "<Cmd>lua require'dapui'.disconnect()<CR>", "Disconnect" },
        R = { "<Cmd>lua require'dap'.repl.open()<CR>", "REPL" },
        S = { "<Cmd>lua require'dap'.step_into()<CR>", "Step Into" },
        b = { "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", "Toggle Breakpoint" },
        c = { "<Cmd>lua require'dap'.continue()<CR>", "Continue" },
        e = { "<Cmd>lua require'dapui'.eval()<CR>", "Evaluate" },
        o = { "<Cmd>lua require'dap'.step_out()<CR>", "Step Out" },
        s = { "<Cmd>lua require'dap'.step_over()<CR>", "Step Over" },
        u = { "<Cmd>lua require'dapui'.toggle()<CR>", "Open UI" },
    },
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
    ["<space>"] = {
        name = "+explorer",
        c = { "<Cmd>NvimTreeClose<CR>", "close" },
        f = { "<Cmd>NvimTreeFocus<CR>", "focus" },
        i = { "<Cmd>NvimTreeFindFile<CR>", "find" },
        p = { "<Cmd>NvimTreeClipboard<CR>", "clipboard" },
        r = { "<Cmd>NvimTreeRefresh<CR>", "refresh" },
        -- s = { "<Cmd>NvimTreeResize<CR>", "resize" },
        e = { "<Cmd>NvimTreeToggle<CR>", "toggle" },
    },
    ["<leader>c"] = {
        name = "+code",
        c = { "<Cmd>lua require('nvim-comment-frame').add_comment()<CR>", "comment line" },
        C = {
            "<Cmd>lua require('nvim-comment-frame').add_multiline_comment()<CR>",
            "comment multi",
        },
    },
    ["<leader>l"] = {
        name = "+lsp",
        F = { "<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add folder" },
        H = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "hover" },
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        f = { "<Cmd>lua vim.lsp.buf.formatting()<CR>", "format" },
        g = { "<Cmd>lua vim.lsp.buf.signature_help()<CR>", "signature" },
        r = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
        l = {
            "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
            "Next Diagnostic",
        },
        h = {
            "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
            "Prev Diagnostic",
        },
        C = { "<Cmd>lua vim.lsp.codelens.run()<CR>", "code lens run" },
        I = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "goto definition" },
        R = { "<Cmd>lua vim.lsp.buf.references()<CR>", "references" },
        d = { "<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", "line diagnostics" },
        i = { "<Cmd>lua vim.lsp.buf.implementation()", "implementation" },
        s = { "<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "loc list" },
    },
    ["<leader><leader>l"] = {
        i = { "<Cmd>lua require'telescope.builtin'.lsp_implementations()<CR>", "implementation" },
        d = { "<Cmd>lua require'telescope.builtin'.diagnostics()<CR>", "diagnostics" },
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
        f = { "<Cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", "lsp definitions" },
        t = {
            "<Cmd>lua require'telescope.builtin'.lsp_type_definitions()<CR>",
            "lsp type definitions",
        },
        D = {
            "<cmd>Telescope lsp_document_diagnostics<cr>",
            "Document Diagnostics",
        },
        w = {
            "<cmd>Telescope lsp_workspace_diagnostics<cr>",
            "Workspace Diagnostics",
        },
    },
})
