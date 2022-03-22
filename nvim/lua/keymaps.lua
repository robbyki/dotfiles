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
map("n", "<leader>L", "<Cmd>lua require('plugins.terminal.custom').lf_toggle()<CR>")
map("n", "<leader>gO", "<Cmd>lua require'gitlinker'.get_repo_url({ action_callback = require'gitlinker.actions'.open_in_browser})<CR>")
map("n", "<leader>go", "<Cmd>lua require'gitlinker'.get_buf_range_url('n', { action_callback = require'gitlinker.actions'.open_in_browser})<CR>")
map("n", "Q", "<Nop>")

-- Trouble
map("n", "<leader>xx", "<cmd>Trouble<cr>")
map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>")
map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>")
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>")
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>")
map("n", "gR", "<cmd>Trouble lsp_references<cr>")

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
  ["<leader><leader>b"] = { "<Cmd>lua require('telescope.builtin').builtin()<CR>", "telescope builtins" },
  ["<leader>?"] = { "<Cmd>lua require('telescope.builtin').oldfiles()<CR>", "recent files" },
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
    b = { [[<Cmd>lua require('plugins.terminal.custom').broot_toggle()<CR>]], "broot" },
    k = { [[<Cmd>lua require('plugins.terminal.custom').k9s_toggle()<CR>]], "k9s" },
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
    s = { "<Cmd>:Telescope git_status<CR>", "git status" },
    g = { "<Cmd>lua require('plugins.terminal.custom').lazygit_toggle()<CR>", "lazygit" },
    b = { "<Cmd>GitBlameToggle<CR>", "blame" },
    d = { "<Cmd>DiffviewOpen<CR>", "Diff view" },
    D = { "<Cmd>DiffviewClose<CR>", "Diff view close" },
    B = { "<Cmd>:Telescope git_branches<CR>", "git branches" },
    f = { "<Cmd>:Telescope git_files<CR>", "git files" },
  },
  ["<leader>P"] = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },
  ["<leader>p"] = {
    name = "+preview",
    d = { "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", "Definition Preview" },
    i = { "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", "Implementation Preview" },
    c = { "<cmd>lua require('goto-preview').close_all_win()<CR>", "Close Preview" },
    r = { "<cmd>lua require('goto-preview').goto_preview_references()<CR>", "References Preview" },
  },
  ["<leader>y"] = {
    name = "+yaml",
    s = { ":call SearchYamlKey()<CR>", "search key (e.g. level1 > level2)" },
  },
  ["<leader>D"] = {
    name = "+debug",
    D = { "<Cmd>lua require'dapui'.disconnect()<CR>", "Dap Disconnect" },
    t = { "<Cmd>lua require'dap'.terminate()<CR>", "Dap Terminate" }, --works=y()
    O = { "<Cmd>lua require'dap'.step_over()<CR>", "Dap Step Over" },
    R = { "<Cmd>lua require'dap'.repl.open()<CR>", "Dap Repl Open" },
    -- b = { "<Cmd>lua require'dap'.list_breakpoints()<CR>", "Dap List Breakpoints" },
    b = { "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", "Dap Toggle Breakpoint" }, --works=yes
    C = { "<Cmd>lua require'dap'.continue()<CR>", "Dap Continue" }, -- works=yes
    c = { "<Cmd>lua require'telescope'.extensions.dap.commands{}<CR>", "Dap Commands" },
    e = { "<Cmd>lua require'dapui'.eval()<CR>", "Dap Evaluate" },
    h = { "<Cmd>lua require'dap.ui.variables'.hover()<CR>", "Dap Hover" },
    o = { "<Cmd>lua require'dap'.step_out()<CR>", "Dap Step Out" }, -- works=yes
    r = { "<Cmd>lua require'dap'.repl.toggle()<CR>", "Dap Repl Toggle" }, -- works=yes
    i = { "<Cmd>lua require'dap'.step_into()<CR>", "Dap Step Into" },
    u = { "<Cmd>lua require'dapui'.toggle()<CR>", "Dap Open UI" }, --works=yes
    x = { "<Cmd>lua require'dap'.close()<CR>", "Dap Close" }, --works=no
    v = { "<Cmd>lua require'telescope'.extensions.dap.variables{}<CR>", "Telescope Dap Variables" }, --works=yes
    l = { "<Cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>", "Telescope Dap List Breakpoints" }, --works=yes
    f = { "<Cmd>lua require'telescope'.extensions.dap.frames{}<CR>", "Telescope Dap Frames" }, --works=yes
    g = { "<Cmd>lua require'telescope'.extensions.dap.configurations{}<CR>", "Telescope Dap Configurations" }, --works=yes
  },
  -- map("n", "<leader>dK", [[<cmd>lua require("dap.ui.widgets").hover()<CR>]])
  -- map("n", "<leader>dbc", [[<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]])
  -- map("n", "<leader>dl", [[<cmd>lua require("dap").run_last()<CR>]])
  -- map("n", "<leader>ds", [[<cmd>lua require("dap.ui.widgets").sidebar(require("dap.ui.widgets").scopes).toggle()<CR>]])
  -- map("n", "<space>dK", [[<cmd>lua require'dap'.ui.widgets".hover()<CR>]])
  -- map("n", "<space>dl", [[<cmd>lua require'dap'.run_last()<CR>]])
  -- map("n", "<space>ds", [[<cmd>lua require'dap'.ui.variables".scopes()<CR>]])
  -- map('n', '<leader>dct', '<cmd>lua require"dap".continue()<CR>')
  -- map('n', '<leader>dhh', '<cmd>lua require"dap.ui.variables".hover()<CR>')
  -- map('n', '<leader>dlb', '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>')
  -- map('n', '<leader>drl', '<cmd>lua require"dap".repl.run_last()<CR>')
  -- map('n', '<leader>dro', '<cmd>lua require"dap".repl.open()<CR>')
  -- map('n', '<leader>dsbm', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>')
  -- map('n', '<leader>dsbr', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
  -- map('n', '<leader>dsc', '<cmd>lua require"dap.ui.variables".scopes()<CR>')
  -- map('n', '<leader>dtb', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
  -- map('n', '<leader>duf', "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>")
  -- map('n', '<leader>duh', '<cmd>lua require"dap.ui.widgets".hover()<CR>')
  -- map('v', '<leader>dhv', '<cmd>lua require"dap.ui.variables".visual_hover()<CR>')
  ["<space>"] = {
    name = "+explorer",
    c = { "<Cmd>NvimTreeClose<CR>", "close" },
    f = { "<Cmd>NvimTreeFocus<CR>", "focus" },
    i = { "<Cmd>NvimTreeFindFile<CR>", "find" },
    p = { "<Cmd>NvimTreeClipboard<CR>", "clipboard" },
    r = { "<Cmd>NvimTreeRefresh<CR>", "refresh" },
    e = { "<Cmd>NvimTreeToggle<CR>", "toggle" },
  },
  ["<leader>c"] = {
    name = "+code",
    c = { "<Cmd>lua require('nvim-comment-frame').add_comment()<CR>", "comment line" },
    C = { "<Cmd>lua require('nvim-comment-frame').add_multiline_comment()<CR>", "comment multi" },
    r = { "<Cmd>lua require('renamer').rename()<CR>", "Rename" },
  },
  ["<leader>l"] = {
    name = "+lsp",
    L = { ":LspInfo<CR>", "Connected Language" },
    F = { "<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add folder" },
    H = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "hover" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
    f = { "<Cmd>lua vim.lsp.buf.formatting()<CR>", "format" },
    g = { "<Cmd>lua vim.lsp.buf.signature_help()<CR>", "signature" },
    r = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
    l = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Next Diagnostic" },
    h = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
    C = { "<Cmd>lua vim.lsp.codelens.run()<CR>", "code lens run" },
    I = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "goto definition" },
    R = { "<Cmd>lua vim.lsp.buf.references()<CR>", "references" },
    d = { "<Cmd>lua vim.diagnostic.open_float()<CR>", "open diagnostics" },
    i = { "<Cmd>lua vim.lsp.buf.implementation()<CR>", "implementation" },
    s = { "<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "loc list" },
  },
  ["<leader><leader>l"] = {
    i = { "<Cmd>lua require'telescope.builtin'.lsp_implementations()<CR>", "Implementations" },
    d = { "<Cmd>lua require'telescope.builtin'.diagnostics()<CR>", "Line Diagnostics" },
    a = { "<Cmd>lua require'telescope.builtin'.lsp_code_actions()<CR>", "Code Actions" },
    s = { "<Cmd>lua require'telescope.builtin'.lsp_document_symbols()<CR>", "Document Symbols" },
    S = { "<Cmd>lua require'telescope.builtin'.lsp_workspace_symbols()<CR>", "Workspace Symbols" },
    r = { "<Cmd>lua require'telescope.builtin'.lsp_references()<CR>", "References" },
    f = { "<Cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", "Definitions" },
    t = { "<Cmd>lua require'telescope.builtin'.lsp_type_definitions()<CR>", "Type Definitions" },
    D = { "<cmd>:Telescope diagnostics<CR>", "Telescope Diagnostics" },
  },
})
