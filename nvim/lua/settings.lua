vim.o.shortmess = string.gsub(vim.o.shortmess, "F", "") .. "c"
vim.o.path = vim.o.path .. "**"

vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.vim_markdown_conceal = 0

vim.g.bullets_enabled_file_types = {
  'gitcommit',
  'markdown',
  'pandoc',
  'text',
}

vim.g.metals_server_version = "0.10.9+67-2ccb27bf-SNAPSHOT"
-- vim.g.metals_disabled_mode = true

vim.g.glow_binary_path = "/usr/local/bin"

-- vim.g.background = "dark"

vim.g.onedark_style = 'deep'
vim.cmd('colorscheme onedark')

local indent = 2

-- this doesn't seem to work very well
--vim.g.gist_api_url = 'http://github.ibm.com/api/v3'
--vim.g.gist_per_page_limit = 100
--vim.g.gist_clip_command = 'xclip -selection clipboard'
--vim.g.gist_open_browser_after_post = 1
--vim.g.gist_show_privates = 1

-- global
vim.opt.incsearch = true
vim.o.cursorline = true
vim.o.ruler = true
vim.o.rulerformat = [[%-14.(%l,%c   %o%)]]
vim.o.mouse = ''
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
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.o.updatetime = 300
vim.o.wildignore = ".git","*/node_modules/*","*/target/*",".metals",".bloop",".ammonite"
vim.o.writebackup = false
vim.o.guifont = "Operator Mono SSm Lig Book"
vim.o.swapfile = false
vim.o.list = true
vim.o.listchars = "tab:│ ,trail:•,precedes:❮,nbsp:.,conceal:Δ"
-- window
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.wrap = false

-- buffer
vim.bo.expandtab = true
vim.bo.fileformat = "unix"
vim.bo.shiftwidth = indent
vim.bo.softtabstop = indent
vim.bo.tabstop = indent

vim.g['incsearch#auto_nohlsearch'] = 1
vim.api.nvim_set_keymap('','n','<Plug>(incsearch-nohl-n)', {})
vim.api.nvim_set_keymap('','N','<Plug>(incsearch-nohl-N)', {})
vim.api.nvim_set_keymap('','*','<Plug>(incsearch-nohl-*)', {})
vim.api.nvim_set_keymap('','#','<Plug>(incsearch-nohl-#)', {})
vim.api.nvim_set_keymap('','g*','<Plug>(incsearch-nohl-g*)', {})
vim.api.nvim_set_keymap('','g#','<Plug>(incsearch-nohl-g#)', {})
------------------------------------
---- COMMANDS ----------------------
------------------------------------
--vim.cmd('set cursorline cursorcolumn')
vim.cmd('set formatoptions-=cro')
vim.cmd('autocmd BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
vim.cmd([[autocmd FileType markdown setlocal textwidth=80]])
vim.cmd([[autocmd BufEnter *.js call matchadd('ColorColumn', '\%81v', 100)]])
vim.cmd([[autocmd BufReadPost,BufNewFile *.md,*.txt,COMMIT_EDITMSG set wrap linebreak nolist spell spelllang=en_us complete+=kspell]])
vim.cmd([[autocmd BufReadPost,BufNewFile .html,*.txt,*.md,*.adoc set spell spelllang=en_us]])
vim.cmd([[autocmd TermOpen * startinsert]])

vim.cmd([[highlight LspDiagnosticsUnderlineWarning guifg=None]])
----cmd([[highlight LspDiagnosticsUnderlineWarning guifg=None"]])
--
-- LSP
vim.cmd([[augroup lsp]])
vim.cmd([[autocmd!]])
vim.cmd([[autocmd FileType scala setlocal omnifunc=v:lua.vim.lsp.omnifunc]])
vim.cmd([[autocmd FileType scala,sbt lua require("metals").initialize_or_attach(Metals_config)]])
vim.cmd([[augroup end]])

-- vim.cmd[[command! PI lua run_packer('install')]]
vim.cmd[[command! PU packadd packer.nvim | lua require('plugins').update()]]
vim.cmd[[command! PI packadd packer.nvim | lua require('plugins').install()]]
vim.cmd[[command! PS packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd[[command! PC packadd packer.nvim | lua require('plugins').clean()]]
-- vim.cmd[[command! PackerCompile lua run_packer('compile')]]

------------------------------------
---- LSP Settings ------------------
------------------------------------
vim.fn.sign_define("LspDiagnosticsSignError", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignWarning", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignInformation", { text = "▬" })
vim.fn.sign_define("LspDiagnosticsSignHint", { text = "▬" })

vim.cmd([[hi! link LspReferenceText CursorColumn]])
vim.cmd([[hi! link LspReferenceRead CursorColumn]])
vim.cmd([[hi! link LspReferenceWrite CursorColumn]])

vim.cmd([[hi! link LspSagaFinderSelection CursorColumn]])
vim.cmd([[hi! link LspSagaDocTruncateLine LspSagaHoverBorder]])

vim.cmd('highlight! Comment cterm=italic, gui=italic') -- italic comments https://stackoverflow.com/questions/3494435/vimrc-make-comments-italic
vim.cmd('highlight! Special cterm=italic, gui=italic')

vim.cmd([[autocmd BufRead,BufNewFile *Jenkins* setfiletype groovy]])

-- use vim for commit messages
vim.cmd([[
  if has('nvim') && executable('nvr')
    let $GIT_EDITOR = "nvr --remote-wait +'set bufhidden=wipe'"
  endif
]])

-- Need for symbol highlights to work correctly
--vim.cmd([[hi! link LspReferenceText CursorColumn]])
--vim.cmd([[hi! link LspReferenceRead CursorColumn]])
--vim.cmd([[hi! link LspReferenceWrite CursorColumn]])
--vim.cmd([[hi! link LspCodeLens CursorColumn]])
--TERMINAL = vim.fn.expand('$TERMINAL')
--vim.bo.expandtab = true -- Converts tabs to spaces
--vim.cmd('let &titleold="'..TERMINAL..'"')
--vim.cmd('set colorcolumn=99999') -- fix indentline for now
--vim.cmd('set inccommand=split') -- Make substitution work in realtime
--vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
--vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
--vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
--vim.cmd('set ts=4') -- Insert 2 spaces for a tab
--vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
--vim.cmd('syntax on') -- move to next line with theses keys
--vim.o.backup = false -- This is recommended by coc
--vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
--vim.o.cmdheight = 2 -- More space for displaying messages
--vim.o.conceallevel = 0 -- So that I can see `` in markdown files
--vim.o.fileencoding = "utf-8" -- The encoding written to file
--vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
--vim.o.mouse = "a" -- Enable your mouse
--vim.o.pumheight = 10 -- Makes popup menu smaller
--vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
--vim.o.showtabline = 2 -- Always show tabs
--vim.o.smarttab = true -- Smart tab
--vim.o.splitbelow = true -- Horizontal splits will automatically be below
--vim.o.splitright = true -- Vertical splits will automatically be to the right
--vim.o.t_Co = "256" -- Support 256 colors
--vim.o.termguicolors = true -- set term giu colors most terminals support this
--vim.o.timeoutlen = 100 -- By default timeoutlen is 1000 ms
--vim.o.title = true
--vim.o.titlestring="%<%F%=%l/%L - nvim"
--vim.o.updatetime = 300 -- Faster completion
--vim.o.writebackup = false -- This is recommended by coc
--vim.wo.cursorline = true -- Enable highlighting of the current line
--vim.wo.number = true -- set numbered lines
--vim.wo.relativenumber = false -- set relative number
--vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
--vim.wo.wrap = false -- Display long lines as just one line
---- vim.o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"
---- vim.o.guifont = "Hack\\ Nerd\\ Font\\ Mono"
---- vim.o.guifont = "SauceCodePro Nerd Font:h17"
--vim.o.guifont = "FantasqueSansMono Nerd Font"
