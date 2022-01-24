vim.o.shortmess = string.gsub(vim.o.shortmess, "F", "") .. "c"
vim.o.path = vim.o.path .. "**"

vim.cmd([[command! PU packadd packer.nvim | lua require('plugins').update()]])
vim.cmd([[command! PI packadd packer.nvim | lua require('plugins').install()]])
vim.cmd([[command! PS packadd packer.nvim | lua require('plugins').sync()]])
vim.cmd([[command! PC packadd packer.nvim | lua require('plugins').clean()]])

-- global
vim.g.loaded_python_provider = 0
vim.g.loaded_perl_provider = 0 -- To disable Perl support
vim.g.loaded_ruby_provider = 0 -- To disable Ruby support

vim.g.loaded_matchit = 1

vim.bo.autoindent = true
vim.bo.expandtab = true
vim.bo.shiftwidth = vim.bo.tabstop
vim.bo.softtabstop = vim.bo.tabstop
vim.bo.tabstop = 4
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.shiftwidth = vim.bo.tabstop
vim.o.softtabstop = vim.bo.tabstop
vim.o.tabstop = 4
vim.o.wrap = false
vim.opt.backup = false
vim.opt.colorcolumn = "100"
vim.opt.completeopt = "menu,menuone,noselect,noinsert"
vim.opt.conceallevel = 0
vim.opt.cursorline = true
vim.opt.fileencoding = "utf-8"
vim.opt.guifont = "Operator Mono SSm Lig Book"
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.list = true
vim.opt.listchars = "tab:│ ,trail:•,precedes:❮,nbsp:.,conceal:Δ"
vim.opt.mouse = ""
vim.opt.ruler = true
vim.opt.rulerformat = [[%-14.(%l,%c   %o%)]]
vim.opt.showmatch = true
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.textwidth = 100
vim.opt.timeoutlen = 500
vim.opt.title = false
vim.opt.updatetime = 300
vim.opt.wildignore = ".git", "*/node_modules/*", "*/target/*", ".metals", ".bloop", ".ammonite"
vim.opt.writebackup = false
vim.wo.cursorline = true
vim.wo.foldlevel = 99
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.wrap = false
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

-- copy buffer path
vim.cmd([[command! CopyBuffer let @+ = expand('%:p')]])

vim.cmd([[ autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 ]])

vim.cmd([[
    augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=200}
augroup END]])

vim.g["incsearch#auto_nohlsearch"] = 1
vim.api.nvim_set_keymap("", "n", "<Plug>(incsearch-nohl-n)", {})
vim.api.nvim_set_keymap("", "N", "<Plug>(incsearch-nohl-N)", {})
vim.api.nvim_set_keymap("", "*", "<Plug>(incsearch-nohl-*)", {})
vim.api.nvim_set_keymap("", "#", "<Plug>(incsearch-nohl-#)", {})
vim.api.nvim_set_keymap("", "g*", "<Plug>(incsearch-nohl-g*)", {})
vim.api.nvim_set_keymap("", "g#", "<Plug>(incsearch-nohl-g#)", {})

vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.vim_markdown_conceal = 0

vim.g.lf_map_keys = 0
vim.g.lf_width = 0.9
vim.g.lf_height = 0.9

vim.g.hardtime_default_on = 1
vim.g.hardtime_showmsg = 0
vim.g.hardtime_maxcount = 0
vim.g.hardtime_ignore_buffer_patterns = { "LuaTree", "alpha", "NvimTree", "fugitiveblame", "magit" }

vim.g.glow_binary_path = "/usr/local/bin"

vim.g.vsnip_snippet_dir = "~/.config/nvim/.vsnip"

vim.g.rainbow_active = 1

vim.cmd([[ highlight CopilotSuggestion guifg=#2e5d7d ctermfg=8 ]])

vim.cmd([[
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('use_python_remote_plugin', 0)
call wilder#set_option('pipeline', [wilder#branch(wilder#cmdline_pipeline({'use_python': 0,'fuzzy': 1, 'fuzzy_filter': wilder#lua_fzy_filter()}),wilder#vim_search_pipeline(), [wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({'draw': [{_, x -> ' ' . x}]})])])
call wilder#set_option('renderer', wilder#renderer_mux({':': wilder#popupmenu_renderer({'highlighter': wilder#lua_fzy_highlighter(), 'left': [wilder#popupmenu_devicons()], 'right': [' ', wilder#popupmenu_scrollbar()]}), '/': wilder#wildmenu_renderer({'highlighter': wilder#lua_fzy_highlighter()})}))
]])

vim.g.qs_highlight_on_keys = { "f", "F", "t", "T" }

vim.cmd("autocmd BufRead,BufNewFile *config :setlocal filetype=yaml")
vim.cmd("set formatoptions-=cro")
vim.cmd("autocmd BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
vim.cmd([[autocmd FileType markdown setlocal textwidth=80]])
---- vim.cmd [[
----     augroup yaml_fix
----         autocmd!
----         autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
----     augroup END
---- ]]
vim.cmd([[autocmd BufEnter *.js call matchadd('ColorColumn', '\%81v', 100)]])
vim.cmd([[autocmd BufReadPost,BufNewFile *.md,*.txt,COMMIT_EDITMSG set wrap linebreak nolist spell spelllang=en_us complete+=kspell]])
vim.cmd([[autocmd TermOpen * startinsert]])

-- LSP
vim.cmd([[highlight LspDiagnosticsUnderlineWarning guifg=None]])
vim.cmd([[hi Visual guifg=White guibg=LightBlue gui=none]])
vim.cmd([[augroup lsp]])
vim.cmd([[autocmd!]])
vim.cmd([[autocmd FileType scala setlocal omnifunc=v:lua.vim.lsp.omnifunc]])
vim.cmd([[autocmd FileType scala,sbt lua require("metals").initialize_or_attach(Metals_config)]])
vim.cmd([[augroup end]])
vim.fn.sign_define("LspDiagnosticsSignError", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignWarning", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignInformation", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignHint", { text = "▬" })
vim.cmd([[hi! link LspReferenceText CursorColumn]])
vim.cmd([[hi! link LspReferenceRead CursorColumn]])
vim.cmd([[hi! link LspReferenceWrite CursorColumn]])
vim.cmd([[hi! link LspSagaFinderSelection CursorColumn]])
vim.cmd([[hi! link LspSagaDocTruncateLine LspSagaHoverBorder]])

vim.cmd("highlight! Comment cterm=italic, gui=italic")
vim.cmd("highlight! Special cterm=italic, gui=italic")

vim.cmd([[autocmd BufRead,BufNewFile *Jenkins* setfiletype groovy]])

-- use vim for commit messages
vim.cmd([[
  if has('nvim') && executable('nvr')
    let $GIT_EDITOR = "nvr --remote-wait +'set bufhidden=wipe'"
  endif
]])

vim.lsp.set_log_level("debug")
