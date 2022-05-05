vim.o.shortmess = string.gsub(vim.o.shortmess, "F", "") .. "c"
vim.o.path = vim.o.path .. "**"

-- update packer with command mode
vim.cmd([[command! PU packadd packer.nvim | lua require('plugins').update()]])
vim.cmd([[command! PI packadd packer.nvim | lua require('plugins').install()]])
vim.cmd([[command! PS packadd packer.nvim | lua require('plugins').sync()]])
vim.cmd([[command! PC packadd packer.nvim | lua require('plugins').clean()]])

vim.cmd([[command! CB :CopyBuffer]])

vim.g.python3_host_prog = "/bin/python3"
vim.g.loaded_python_provider = 0
vim.g.loaded_perl_provider = 0 -- To disable Perl support
vim.g.loaded_ruby_provider = 0 -- To disable Ruby support

-- vim.opt.spellfile = "~/.dotfiles/nvim/spell/en.utf-8.add"
-- vim.opt.spell = true
-- vim.opt.spelllang = "en"
-- vim.o.smartindent = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.opt.backup = false
vim.opt.clipboard = vim.o.clipboard .. "unnamedplus" -- use clipboard on everything
vim.opt.colorcolumn = "100"
vim.opt.completeopt = "menu,menuone,noselect,noinsert"
vim.opt.conceallevel = 0
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.guifont = "Operator Mono SSm Lig Book"
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 3
vim.opt.list = true
vim.opt.listchars = "tab:│ ,trail:•,precedes:❮,nbsp:.,conceal:Δ"
vim.opt.mouse = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.rulerformat = [[%-14.(%l,%c   %o%)]]
vim.opt.showmatch = true
vim.opt.showmode = true
vim.opt.showtabline = 2
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000
vim.opt.title = false
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undodir/"
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.wildignore = ".git", "*/node_modules/*", "*/target/*", ".metals", ".bloop", ".ammonite"
vim.opt.writebackup = false
vim.wo.cursorline = true
vim.wo.foldlevel = 99
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.cmd([[
filetype on
filetype plugin on
filetype plugin indent on
]])

-- copy buffer path
vim.cmd([[command! CopyBuffer let @+ = expand('%:p')]])
vim.cmd([[command! CopyParentDir let @+ = expand('%:p:h')]])
-- vim.cmd([[autocmd FileType go nmap <leader>gr :GoRun %<CR>]])
-- vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>GoRun %<cr>", { noremap = true, silent = true })

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

vim.g.glow_binary_path = "/usr/local/bin"
vim.g.vsnip_snippet_dir = "/home/robbyk/.dotfiles/nvim/.vsnip"
vim.g.rainbow_active = 1

vim.g.qs_highlight_on_keys = { "f", "F", "t", "T" }

-- autocommands
vim.cmd([[autocmd FileType lua setlocal shiftwidth=2 tabstop=2 expandtab]])
vim.cmd([[autocmd FileType sh setlocal shiftwidth=2 tabstop=2 expandtab]])
vim.cmd([[autocmd FileType,BufEnter,BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]])
vim.cmd([[autocmd BufRead,BufNewFile *Dockerfile* :set ft=dockerfile]])
-- vim.cmd([[autocmd BufRead,BufNewFile ~/.dotfiles/zsh/* :set ft=sh]])
vim.cmd([[autocmd BufRead,BufNewFile zsh* :set ft=sh]]) -- this is mostly for vim at command line syntax highlighting
vim.cmd([[autocmd BufRead,BufNewFile ~/bin/* :set ft=sh]])
vim.cmd([[autocmd BufRead,BufNewFile */oc-crc-notes.txt :set ft=sh]])
vim.cmd([[autocmd BufRead,BufNewFile */.kube/config :set ft=yaml]])
vim.cmd(
  [[autocmd BufReadPost,BufNewFile *.jsx,*.md,*.txt,COMMIT_EDITMSG set wrap linebreak nolist spell spelllang=en_us complete+=kspell]]
)
vim.cmd([[autocmd BufRead,BufNewFile *Jenkins* setfiletype groovy]])
-- vim.cmd([[autocmd FileType yaml setlocal ts=2 sts=2 sw=2 ai expandtab]])

vim.cmd("highlight! Comment cterm=italic, gui=italic")
vim.cmd("highlight! Special cterm=italic, gui=italic")

-- use vim for commit messages
vim.cmd([[
  if has('nvim') && executable('nvr')
    let $GIT_EDITOR = "nvr --remote-wait +'set bufhidden=wipe'"
  endif
]])

vim.cmd([[highlight FidgetTitle ctermfg=110 guifg=#6cb6eb]])
vim.wo.wrap = false
vim.opt.wrap = false
vim.opt.textwidth = 0

vim.cmd([[
    highlight ScrollView ctermbg=159 guibg=LightCyan
]])
vim.g.nvim_tree_respect_buf_cwd = 1
