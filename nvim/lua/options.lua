vim.o.shortmess = string.gsub(vim.o.shortmess, "F", "") .. "c"
vim.o.path = vim.o.path .. "**"

vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.vim_markdown_conceal = 0

vim.g.bullets_enabled_file_types = {
  "gitcommit",
  "markdown",
  "pandoc",
  "text",
}

vim.g.lf_map_keys = 0
vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.9

vim.g.hardtime_default_on = 1
vim.g.hardtime_showmsg = 0
vim.g.hardtime_maxcount = 0
vim.g.hardtime_ignore_buffer_patterns = { "LuaTree", "alpha", "NvimTree", "fugitiveblame", "magit" }

vim.g.glow_binary_path = "/usr/local/bin"

vim.g.vsnip_snippet_dir = "~/.config/nvim/.vsnip"

vim.g.rainbow_active = 1

local indent = 2

vim.cmd([[ highlight CopilotSuggestion guifg=#2e5d7d ctermfg=8 ]])

vim.cmd([[
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('use_python_remote_plugin', 0)
call wilder#set_option('pipeline', [wilder#branch(wilder#cmdline_pipeline({'use_python': 0,'fuzzy': 1, 'fuzzy_filter': wilder#lua_fzy_filter()}),wilder#vim_search_pipeline(), [wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({'draw': [{_, x -> ' ' . x}]})])])
call wilder#set_option('renderer', wilder#renderer_mux({':': wilder#popupmenu_renderer({'highlighter': wilder#lua_fzy_highlighter(), 'left': [wilder#popupmenu_devicons()], 'right': [' ', wilder#popupmenu_scrollbar()]}), '/': wilder#wildmenu_renderer({'highlighter': wilder#lua_fzy_highlighter()})}))
]])

-- global
vim.opt.incsearch = true
vim.o.cursorline = true
vim.o.ruler = true
vim.o.rulerformat = [[%-14.(%l,%c   %o%)]]
vim.o.mouse = ""
vim.o.backup = false
vim.o.clipboard = "unnamed"
vim.o.completeopt = "menu,menuone,noselect,noinsert"
vim.o.conceallevel = 0
vim.o.fileencoding = "utf-8"
vim.o.hidden = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.laststatus = 2
vim.o.showmatch = true
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.title = true
vim.o.titlestring = "%<%F%=%l/%L - nvim"
vim.o.updatetime = 300
vim.o.wildignore = ".git", "*/node_modules/*", "*/target/*", ".metals", ".bloop", ".ammonite"
vim.o.writebackup = false
vim.o.guifont = "Operator Mono SSm Lig Book"
vim.o.swapfile = false
vim.o.list = true
vim.o.listchars = "tab:│ ,trail:•,precedes:❮,nbsp:.,conceal:Δ"
vim.o.timeoutlen = 500

-- window
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.wrap = false

vim.g.lf_width = 0.9
vim.g.lf_height = 0.9

-- buffer
vim.bo.expandtab = true
vim.bo.fileformat = "unix"
vim.bo.shiftwidth = indent
vim.bo.softtabstop = indent
vim.bo.tabstop = indent

vim.cmd('imap <silent><script><expr> <C-Q> copilot#Accept("")')
vim.g.copilot_no_tab_map = true

-- vim.api.nvim_exec([[imap <silent><script><expr> <C-e> copilot#Accept()]], true)

vim.g["incsearch#auto_nohlsearch"] = 1
vim.api.nvim_set_keymap("", "n", "<Plug>(incsearch-nohl-n)", {})
vim.api.nvim_set_keymap("", "N", "<Plug>(incsearch-nohl-N)", {})
vim.api.nvim_set_keymap("", "*", "<Plug>(incsearch-nohl-*)", {})
vim.api.nvim_set_keymap("", "#", "<Plug>(incsearch-nohl-#)", {})
vim.api.nvim_set_keymap("", "g*", "<Plug>(incsearch-nohl-g*)", {})
vim.api.nvim_set_keymap("", "g#", "<Plug>(incsearch-nohl-g#)", {})
------------------------------------
---- COMMANDS ----------------------
------------------------------------
vim.cmd([[
    augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=200}
augroup END]])

vim.cmd("autocmd BufRead,BufNewFile *config :setlocal filetype=yaml")
vim.cmd("set formatoptions-=cro")
vim.cmd("autocmd BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
vim.cmd([[autocmd FileType markdown setlocal textwidth=80]])
vim.cmd([[autocmd BufEnter *.js call matchadd('ColorColumn', '\%81v', 100)]])
vim.cmd([[autocmd BufReadPost,BufNewFile *.md,*.txt,COMMIT_EDITMSG set wrap linebreak nolist spell spelllang=en_us complete+=kspell]])
vim.cmd([[autocmd BufReadPost,BufNewFile .html,*.txt,*.md,*.adoc set spell spelllang=en_us]])
vim.cmd([[autocmd TermOpen * startinsert]])

vim.cmd([[highlight LspDiagnosticsUnderlineWarning guifg=None]])
-- vim.cmd([[hi Visual guifg=White guibg=LightBlue gui=none]])

-- LSP
vim.cmd([[augroup lsp]])
vim.cmd([[autocmd!]])
vim.cmd([[autocmd FileType scala setlocal omnifunc=v:lua.vim.lsp.omnifunc]])
vim.cmd([[autocmd FileType scala,sbt lua require("metals").initialize_or_attach(Metals_config)]])
vim.cmd([[augroup end]])

-- vim.cmd[[command! PI lua run_packer('install')]]
vim.cmd([[command! PU packadd packer.nvim | lua require('plugins').update()]])
vim.cmd([[command! PI packadd packer.nvim | lua require('plugins').install()]])
vim.cmd([[command! PS packadd packer.nvim | lua require('plugins').sync()]])
vim.cmd([[command! PC packadd packer.nvim | lua require('plugins').clean()]])

-- lsp settings
vim.fn.sign_define("LspDiagnosticsSignError", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignWarning", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignInformation", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignHint", { text = "▬" })

vim.cmd([[hi! link LspReferenceText CursorColumn]])
vim.cmd([[hi! link LspReferenceRead CursorColumn]])
vim.cmd([[hi! link LspReferenceWrite CursorColumn]])

vim.cmd([[hi! link LspSagaFinderSelection CursorColumn]])
vim.cmd([[hi! link LspSagaDocTruncateLine LspSagaHoverBorder]])

vim.cmd("highlight! Comment cterm=italic, gui=italic") -- italic comments https://stackoverflow.com/questions/3494435/vimrc-make-comments-italic
vim.cmd("highlight! Special cterm=italic, gui=italic")

vim.cmd([[autocmd BufRead,BufNewFile *Jenkins* setfiletype groovy]])

-- use vim for commit messages
vim.cmd([[
  if has('nvim') && executable('nvr')
    let $GIT_EDITOR = "nvr --remote-wait +'set bufhidden=wipe'"
  endif
]])
