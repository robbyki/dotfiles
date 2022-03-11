
"[No Name]" --No lines in buffer--

chdir(/home/robbyk/.dotfiles)
chdir(/home/robbyk/.dotfiles)
chdir(/home/robbyk/.dotfiles)
Executing BufDelete Autocommands for "*"
autocommand lua require("nvim-autopairs").set_buf_rule(nil,tonumber(vim.fn.expand("<abuf>")))

Executing: lua require("nvim-autopairs").set_buf_rule(nil,tonumber(vim.fn.expand("<abuf>")))
Executing BufDelete Autocommands for "*"
autocommand lua require('gitblame').cleanup_file_data()

Executing: lua require('gitblame').cleanup_file_data()
                                                      "test.sh" [New]
Reading ShaDa file "/home/robbyk/.local/share/nvim/shada/main.shada" marks
Executing BufNewFile Autocommands for "*"
autocommand call s:UseConfigFiles()

Executing: call s:UseConfigFiles()
calling function <SNR>2_UseConfigFiles()

line 1:     let b:editorconfig_tried = 1
line 2:     let l:buffer_name = expand('%:p')
line 3:     " ignore buffers without a name
line 4:     if empty(l:buffer_name)
line 5:         return
line 6:     endif
line 7: 
line 8:     if exists("b:EditorConfig_disable") && b:EditorConfig_disable
line 9:         if g:EditorConfig_verbose
line 10:             echo 'Skipping EditorConfig for buffer "' . l:buffer_name . '"'
line 11:         endif
line 12:         return
line 13:     endif
line 14: 
line 15:     " Check if any .editorconfig does exist
line 16:     let l:conf_files = s:GetFilenames(expand('%:p:h'), '.editorconfig')
calling function <SNR>2_UseConfigFiles[16]..<SNR>2_GetFilenames('/home/robbyk/.dotfiles', '.editorconfig')

line 1: " Yield full filepath for filename in each directory in and above path
line 2: 
line 3:     let l:path_list = []
line 4:     let l:path = a:path
line 5:     while 1
line 6:         let l:path_list += [l:path . '/' . a:filename]
line 7:         let l:newpath = fnamemodify(l:path, ':h')
line 8:         if l:path == l:newpath
line 9:             break
line 10:         endif
line 11:         let l:path = l:newpath
line 12:     endwhile
line 5:     while 1
line 6:         let l:path_list += [l:path . '/' . a:filename]
line 7:         let l:newpath = fnamemodify(l:path, ':h')
line 8:         if l:path == l:newpath
line 9:             break
line 10:         endif
line 11:         let l:path = l:newpath
line 12:     endwhile
line 5:     while 1
line 6:         let l:path_list += [l:path . '/' . a:filename]
line 7:         let l:newpath = fnamemodify(l:path, ':h')
line 8:         if l:path == l:newpath
line 9:             break
line 10:         endif
line 11:         let l:path = l:newpath
line 12:     endwhile
line 5:     while 1
line 6:         let l:path_list += [l:path . '/' . a:filename]
line 7:         let l:newpath = fnamemodify(l:path, ':h')
line 8:         if l:path == l:newpath
line 9:             break
line 10:         endif
line 11:         let l:path = l:newpath
line 12:     endwhile
line 13:     return l:path_list
function <SNR>2_UseConfigFiles[16]..<SNR>2_GetFilenames returning ['/home/robbyk/.dotfiles/.editorconfig...home/.editorconfig', '//.editorconfig']

continuing in function <SNR>2_UseConfigFiles

line 17:     let l:conf_found = 0
line 18:     for conf_file in conf_files
line 19:         if filereadable(conf_file)
line 20:             let l:conf_found = 1
line 21:             break
line 22:         endif
line 23:     endfor
line 18:     for conf_file in conf_files
line 19:         if filereadable(conf_file)
line 20:             let l:conf_found = 1
line 21:             break
line 22:         endif
line 23:     endfor
line 18:     for conf_file in conf_files
line 19:         if filereadable(conf_file)
line 20:             let l:conf_found = 1
line 21:             break
line 22:         endif
line 23:     endfor
line 18:     for conf_file in conf_files
line 19:         if filereadable(conf_file)
line 20:             let l:conf_found = 1
line 21:             break
line 22:         endif
line 23:     endfor
line 18:     for conf_file in conf_files
line 19:         if filereadable(conf_file)
line 20:             let l:conf_found = 1
line 21:             break
line 22:         endif
line 23:     endfor
line 24:     if !l:conf_found
line 25:         return
function <SNR>2_UseConfigFiles returning #0

continuing in BufNewFile Autocommands for "*"

Executing BufNewFile Autocommands for "*"
autocommand if !did_filetype() && getline(1) =~# '@startuml\>'| setfiletype plantuml | endif

Executing: if !did_filetype() && getline(1) =~# '@startuml\>'| setfiletype plantuml | endif
Executing:  setfiletype plantuml | endif
Executing:  endif
Executing BufNewFile Autocommands for "*.sh"
autocommand call dist#ft#SetFileTypeSH(getline(1))

Executing: call dist#ft#SetFileTypeSH(getline(1))
Searching for "autoload/dist/ft.vim" in runtime path
Searching for "/home/robbyk/.config/nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/autoload/dist/ft.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/autoload/dist/ft.vim"
Searching for "/usr/share/nvim/site/autoload/dist/ft.vim"
Searching for "/usr/local/share/nvim/runtime/autoload/dist/ft.vim"
chdir(/home/robbyk/.dotfiles)
chdir(/usr/local/share/nvim/runtime/autoload/dist)
chdir(/home/robbyk/.dotfiles)
line 0: sourcing "/usr/local/share/nvim/runtime/autoload/dist/ft.vim"
line 1: " Vim functions for file type detection
line 2: "
line 3: " Maintainer:^IBram Moolenaar <Bram@vim.org>
line 4: " Last Change:^I2020 Aug 17
line 5: 
line 6: " These functions are moved here from runtime/filetype.vim to make startup
line 7: " faster.
line 8: 
line 9: " Line continuation is used here, remove 'C' from 'cpoptions'
line 10: let s:cpo_save = &cpo
line 11: set cpo&vim
line 12: 
line 13: func dist#ft#Check_inp()
line 32: 
line 33: " This function checks for the kind of assembly that is wanted by the user, or
line 34: " can be detected from the first five lines of the file.
line 35: func dist#ft#FTasm()
line 56: 
line 57: func dist#ft#FTasmsyntax()
line 69: 
line 70: " Check if one of the first five lines contains "VB_Name".  In that case it is
line 71: " probably a Visual Basic file.  Otherwise it's assumed to be "alt" filetype.
line 72: func dist#ft#FTVB(alt)
line 79: 
line 80: func dist#ft#FTbtm()
line 87: 
line 88: func dist#ft#BindzoneCheck(default)
line 95: 
line 96: func dist#ft#FTlpc()
line 109: 
line 110: func dist#ft#FTheader()
line 125: 
line 126: " This function checks if one of the first ten lines start with a '@'.  In
line 127: " that case it is probably a change file.
line 128: " If the first line starts with # or ! it's probably a ch file.
line 129: " If a line has "main", "include", "//" or "/*" it's probably ch.
line 130: " Otherwise CHILL is assumed.
line 131: func dist#ft#FTchange()
line 154: 
line 155: func dist#ft#FTent()
line 174: 
line 175: func dist#ft#ExCheck()
line 185: 
line 186: func dist#ft#EuphoriaCheck()
line 193: 
line 194: func dist#ft#DtraceCheck()
line 205: 
line 206: func dist#ft#FTe()
line 221: 
line 222: " Distinguish between HTML, XHTML and Django
line 223: func dist#ft#FThtml()
line 238: 
line 239: " Distinguish between standard IDL and MS-IDL
line 240: func dist#ft#FTidl()
line 251: 
line 252: " Distinguish between "default" and Cproto prototype file. */
line 253: func dist#ft#ProtoCheck(default)
line 265: 
line 266: func dist#ft#FTm()
line 320: 
line 321: func dist#ft#FTmms()
line 337: 
line 338: " This function checks if one of the first five lines start with a dot.  In
line 339: " that case it is probably an nroff file: 'filetype' is set and 1 is returned.
line 340: func dist#ft#FTnroff()
line 347: 
line 348: func dist#ft#FTmm()
line 360: 
line 361: func dist#ft#FTpl()
line 375: 
line 376: func dist#ft#FTinc()
line 401: 
line 402: func dist#ft#FTprogress_cweb()
line 413: 
line 414: func dist#ft#FTprogress_asm()
line 436: 
line 437: let s:ft_pascal_comments = '^\s*\%({\|(\*\|//\)'
line 438: let s:ft_pascal_keywords = '^\s*\%(program\|unit\|library\|uses\|begin\|procedure\|function\|const\|type\|var\)\>'
line 439: 
line 440: func dist#ft#FTprogress_pascal()
line 463: 
line 464: func dist#ft#FTpp()
line 476: 
line 477: func dist#ft#FTr()
line 509: 
line 510: func dist#ft#McSetf()
line 525: 
line 526: " Called from filetype.vim and scripts.vim.
line 527: func dist#ft#SetFileTypeSH(name)
line 574: 
line 575: " For shell-like file types, check for an "exec" command hidden in a comment,
line 576: " as used for Tcl.
line 577: " Also called from scripts.vim, thus can't be local to this script.
line 578: func dist#ft#SetFileTypeShell(name)
line 601: 
line 602: func dist#ft#CSH()
line 615: 
line 616: let s:ft_rules_udev_rules_pattern = '^\s*\cudev_rules\s*=\s*"\([^"]\{-1,}\)/*".*'
line 617: func dist#ft#FTRules()
line 649: 
line 650: func dist#ft#SQL()
line 657: 
line 658: " If the file has an extension of 't' and is in a directory 't' or 'xt' then
line 659: " it is almost certainly a Perl test file.
line 660: " If the first line starts with '#' and contains 'perl' it's probably a Perl
line 661: " file.
line 662: " (Slow test) If a file contains a 'use' statement then it is almost certainly
line 663: " a Perl file.
line 664: func dist#ft#FTperl()
line 684: 
line 685: " Choose context, plaintex, or tex (LaTeX) based on these rules:
line 686: " 1. Check the first line of the file for "%&<format>".
line 687: " 2. Check the first 1000 non-comment lines for LaTeX or ConTeXt keywords.
line 688: " 3. Default to "plain" or to g:tex_flavor, can be set in user's vimrc.
line 689: func dist#ft#FTtex()
line 740: 
line 741: func dist#ft#FTxml()
line 766: 
line 767: func dist#ft#FTy()
line 783: 
line 784: func dist#ft#Redif()
line 794: 
line 795: 
line 796: " Restore 'cpoptions'
line 797: let &cpo = s:cpo_save
line 798: unlet s:cpo_save
finished sourcing /usr/local/share/nvim/runtime/autoload/dist/ft.vim
continuing in BufNewFile Autocommands for "*.sh"
calling function dist#ft#SetFileTypeSH('')

line 1:   if did_filetype()
line 2:     " Filetype was already detected
line 3:     return
line 4:   endif
line 5:   if expand("<amatch>") =~ g:ft_ignore_pat
line 6:     return
line 7:   endif
line 8:   if a:name =~ '\<csh\>'
line 9:     " Some .sh scripts contain #!/bin/csh.
line 10:     call dist#ft#SetFileTypeShell("csh")
line 11:     return
line 12:   elseif a:name =~ '\<tcsh\>'
line 13:     " Some .sh scripts contain #!/bin/tcsh.
line 14:     call dist#ft#SetFileTypeShell("tcsh")
line 15:     return
line 16:   elseif a:name =~ '\<zsh\>'
line 17:     " Some .sh scripts contain #!/bin/zsh.
line 18:     call dist#ft#SetFileTypeShell("zsh")
line 19:     return
line 20:   elseif a:name =~ '\<ksh\>'
line 21:     let b:is_kornshell = 1
line 22:     if exists("b:is_bash")
line 23:       unlet b:is_bash
line 24:     endif
line 25:     if exists("b:is_sh")
line 26:       unlet b:is_sh
line 27:     endif
line 28:   elseif exists("g:bash_is_sh") || a:name =~ '\<bash\>' || a:name =~ '\<bash2\>'
line 29:     let b:is_bash = 1
line 30:     if exists("b:is_kornshell")
line 31:       unlet b:is_kornshell
line 32:     endif
line 33:     if exists("b:is_sh")
line 34:       unlet b:is_sh
line 35:     endif
line 36:   elseif a:name =~ '\<sh\>'
line 37:     let b:is_sh = 1
line 38:     if exists("b:is_kornshell")
line 39:       unlet b:is_kornshell
line 40:     endif
line 41:     if exists("b:is_bash")
line 42:       unlet b:is_bash
line 43:     endif
line 44:   endif
line 45:   call dist#ft#SetFileTypeShell("sh")
calling function dist#ft#SetFileTypeSH[45]..dist#ft#SetFileTypeShell('sh')

line 1:   if did_filetype()
line 2:     " Filetype was already detected
line 3:     return
line 4:   endif
line 5:   if expand("<amatch>") =~ g:ft_ignore_pat
line 6:     return
line 7:   endif
line 8:   let l = 2
line 9:   while l < 20 && l < line("$") && getline(l) =~ '^\s*\(#\|$\)'
line 10:     " Skip empty and comment lines.
line 11:     let l = l + 1
line 12:   endwhile
line 13:   if l < line("$") && getline(l) =~ '\s*exec\s' && getline(l - 1) =~ '^\s*#.*\\$'
line 14:     " Found an "exec" line after a comment with continuation
line 15:     let n = substitute(getline(l),'\s*exec\s\+\([^ ]*/\)\=', '', '')
line 16:     if n =~ '\<tclsh\|\<wish'
line 17:       setf tcl
line 18:       return
line 19:     endif
line 20:   endif
line 21:   exe "setf " . a:name
line 21: setf sh
Executing FileType Autocommands for "*"
autocommand lua COLORIZER_SETUP_HOOK()

Executing: lua COLORIZER_SETUP_HOOK()
Executing FileType Autocommands for "*"
autocommand unsilent lua require("null-ls.client").try_add()

Executing: unsilent lua require("null-ls.client").try_add()
Executing:       augroup lsp_c_1_b_2_did_save
Executing:         au!
Executing:         au BufWritePost <buffer=2> lua vim.lsp._text_document_did_save_handler(0)
Executing:       augroup END
Executing:     
Executing FileType Autocommands for "*"
autocommand lua require("nvim-autopairs").force_attach()

Executing: lua require("nvim-autopairs").force_attach()
Executing FileType Autocommands for "*"
autocommand call s:LoadFTPlugin()

Executing: call s:LoadFTPlugin()
calling function <SNR>37_LoadFTPlugin()

line 1:     if exists("b:undo_ftplugin")
line 2:       exe b:undo_ftplugin
line 3:       unlet! b:undo_ftplugin b:did_ftplugin
line 4:     endif
line 5: 
line 6:     let s = expand("<amatch>")
line 7:     if s != ""
line 8:       if &cpo =~# "S" && exists("b:did_ftplugin")
line 9: ^I" In compatible mode options are reset to the global values, need to
line 10: ^I" set the local values also when a plugin was already used.
line 11: ^Iunlet b:did_ftplugin
line 12:       endif
line 13: 
line 14:       " When there is a dot it is used to separate filetype names.  Thus for
line 15:       " "aaa.bbb" load "aaa" and then "bbb".
line 16:       for name in split(s, '\.')
line 17:         exe 'runtime! ftplugin/' . name . '.vim ftplugin/' . name . '_*.vim ftplugin/' . name . '/*.vim'
line 17: runtime! ftplugin/sh.vim ftplugin/sh_*.vim ftplugin/sh/*.vim
Searching for "ftplugin/sh.vim ftplugin/sh_*.vim ftplugin/sh/*.vim" in runtime path
Searching for "/home/robbyk/.config/nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.config/nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.config/nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh/*.vim"
chdir(/home/robbyk/.dotfiles)
chdir(/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh)
chdir(/home/robbyk/.dotfiles)
line 17: sourcing "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh/splitjoin.vim"
line 1: let b:splitjoin_split_callbacks = [ 'sj#sh#SplitBySemicolon', ]
line 4: 
line 5: let b:splitjoin_join_callbacks = [ 'sj#sh#JoinWithSemicolon', ]
finished sourcing /home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh/splitjoin.vim
continuing in function <SNR>37_LoadFTPlugin
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/ftplugin/sh/*.vim"
Searching for "/usr/share/nvim/site/ftplugin/sh.vim"
Searching for "/usr/share/nvim/site/ftplugin/sh_*.vim"
Searching for "/usr/share/nvim/site/ftplugin/sh/*.vim"
Searching for "/usr/local/share/nvim/runtime/ftplugin/sh.vim"
chdir(/home/robbyk/.dotfiles)
chdir(/usr/local/share/nvim/runtime/ftplugin)
chdir(/home/robbyk/.dotfiles)
line 17: sourcing "/usr/local/share/nvim/runtime/ftplugin/sh.vim"
line 1: " Vim filetype plugin file
line 2: " Language:^Ish
line 3: " Maintainer:^IDan Sharp <dwsharp at users dot sourceforge dot net>
line 4: " Last Changed: 20 Jan 2009
line 5: " URL:^I^Ihttp://dwsharp.users.sourceforge.net/vim/ftplugin
line 6: 
line 7: if exists("b:did_ftplugin") | finish | endif
line 7:  finish | endif
line 7:  endif
line 8: let b:did_ftplugin = 1
line 9: 
line 10: " Make sure the continuation lines below do not cause problems in
line 11: " compatibility mode.
line 12: let s:save_cpo = &cpo
line 13: set cpo-=C
line 14: 
line 15: setlocal commentstring=#%s
line 16: 
line 17: " Shell:  thanks to Johannes Zellner
line 18: if exists("loaded_matchit")
line 19:     let s:sol = '\%(;\s*\|^\s*\)\@<='  " start of line
line 20:     let b:match_words = s:sol.'if\>:' . s:sol.'elif\>:' . s:sol.'else\>:' . s:sol. 'fi\>,' . s:sol.'\%(for\|while\)\>:' . s:sol. 'done\>,' . s:sol.'case\>:' . s:sol. 'esac\>'
line 24: endif
line 25: 
line 26: " Change the :browse e filter to primarily show shell-related files.
line 27: if has("gui_win32")
line 28:     let  b:browsefilter="Bourne Shell Scripts (*.sh)\t*.sh\n" .^I"Korn Shell Scripts (*.ksh)\t*.ksh\n" .^I"Bash Shell Scripts (*.bash)\t*.bash\n" .^I"All Files (*.*)\t*.*\n"
line 32: endif
line 33: 
line 34: " Undo the stuff we changed.
line 35: let b:undo_ftplugin = "setlocal cms< | unlet! b:browsefilter b:match_words"
line 36: 
line 37: " Restore the saved compatibility options.
line 38: let &cpo = s:save_cpo
line 39: unlet s:save_cpo
finished sourcing /usr/local/share/nvim/runtime/ftplugin/sh.vim
continuing in function <SNR>37_LoadFTPlugin
Searching for "/usr/local/share/nvim/runtime/ftplugin/sh_*.vim"
Searching for "/usr/local/share/nvim/runtime/ftplugin/sh/*.vim"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/sh.vim"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/sh_*.vim"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/sh/*.vim"
Searching for "/usr/local/lib64/nvim/ftplugin/sh.vim"
Searching for "/usr/local/lib64/nvim/ftplugin/sh_*.vim"
Searching for "/usr/local/lib64/nvim/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/ftplugin/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/ftplugin/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/ftplugin/sh_*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/ftplugin/sh/*.vim"
line 18:         " Load lua ftplugins
line 19:         exe printf('runtime! ftplugin/%s.lua ftplugin/%s_*.lua ftplugin/%s/*.lua', name, name, name)
line 19: runtime! ftplugin/sh.lua ftplugin/sh_*.lua ftplugin/sh/*.lua
Searching for "ftplugin/sh.lua ftplugin/sh_*.lua ftplugin/sh/*.lua" in runtime path
Searching for "/home/robbyk/.config/nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.config/nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.config/nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/ftplugin/sh/*.lua"
Searching for "/usr/share/nvim/site/ftplugin/sh.lua"
Searching for "/usr/share/nvim/site/ftplugin/sh_*.lua"
Searching for "/usr/share/nvim/site/ftplugin/sh/*.lua"
Searching for "/usr/local/share/nvim/runtime/ftplugin/sh.lua"
Searching for "/usr/local/share/nvim/runtime/ftplugin/sh_*.lua"
Searching for "/usr/local/share/nvim/runtime/ftplugin/sh/*.lua"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/sh.lua"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/sh_*.lua"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/sh/*.lua"
Searching for "/usr/local/lib64/nvim/ftplugin/sh.lua"
Searching for "/usr/local/lib64/nvim/ftplugin/sh_*.lua"
Searching for "/usr/local/lib64/nvim/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/ftplugin/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/ftplugin/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/ftplugin/sh_*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/ftplugin/sh/*.lua"
not found in runtime path: "ftplugin/sh.lua ftplugin/sh_*.lua ftplugin/sh/*.lua"
line 20:       endfor
line 16:       for name in split(s, '\.')
line 17:         exe 'runtime! ftplugin/' . name . '.vim ftplugin/' . name . '_*.vim ftplugin/' . name . '/*.vim'
line 18:         " Load lua ftplugins
line 19:         exe printf('runtime! ftplugin/%s.lua ftplugin/%s_*.lua ftplugin/%s/*.lua', name, name, name)
line 20:       endfor
line 21:     endif
function <SNR>37_LoadFTPlugin returning #0

continuing in FileType Autocommands for "*"

Executing FileType Autocommands for "*"
autocommand call s:LoadIndent()

Executing: call s:LoadIndent()
calling function <SNR>38_LoadIndent()

line 1:     if exists("b:undo_indent")
line 2:       exe b:undo_indent
line 3:       unlet! b:undo_indent b:did_indent
line 4:     endif
line 5:     let s = expand("<amatch>")
line 6:     if s != ""
line 7:       if exists("b:did_indent")
line 8: ^Iunlet b:did_indent
line 9:       endif
line 10: 
line 11:       " When there is a dot it is used to separate filetype names.  Thus for
line 12:       " "aaa.bbb" load "indent/aaa.vim" and then "indent/bbb.vim".
line 13:       for name in split(s, '\.')
line 14:         exe 'runtime! indent/' . name . '.vim'
line 14: runtime! indent/sh.vim
Searching for "indent/sh.vim" in runtime path
Searching for "/home/robbyk/.config/nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/indent/sh.vim"
Searching for "/usr/share/nvim/site/indent/sh.vim"
Searching for "/usr/local/share/nvim/runtime/indent/sh.vim"
chdir(/home/robbyk/.dotfiles)
chdir(/usr/local/share/nvim/runtime/indent)
chdir(/home/robbyk/.dotfiles)
line 14: sourcing "/usr/local/share/nvim/runtime/indent/sh.vim"
line 1: " Vim indent file
line 2: " Language:            Shell Script
line 3: " Maintainer:          Christian Brabandt <cb@256bit.org>
line 4: " Original Author:     Nikolai Weibull <now@bitwi.se>
line 5: " Previous Maintainer: Peter Aronoff <telemachus@arpinum.org>
line 6: " Latest Revision:     2019-10-24
line 7: " License:             Vim (see :h license)
line 8: " Repository:          https://github.com/chrisbra/vim-sh-indent
line 9: " Changelog:
line 10: "          20190726  - Correctly skip if keywords in syntax comments
line 11: "                      (issue #17)
line 12: "          20190603  - Do not indent in zsh filetypes with an `if` in comments
line 13: "          20190428  - De-indent fi correctly when typing with
line 14: "                      https://github.com/chrisbra/vim-sh-indent/issues/15
line 15: "          20190325  - Indent fi; correctly
line 16: "                      https://github.com/chrisbra/vim-sh-indent/issues/14
line 17: "          20190319  - Indent arrays (only zsh and bash)
line 18: "                      https://github.com/chrisbra/vim-sh-indent/issues/13
line 19: "          20190316  - Make use of searchpairpos for nested if sections
line 20: "                      fixes https://github.com/chrisbra/vim-sh-indent/issues/11
line 21: "          20190201  - Better check for closing if sections
line 22: "          20180724  - make check for zsh syntax more rigid (needs word-boundaries)
line 23: "          20180326  - better support for line continuation
line 24: "          20180325  - better detection of function definitions
line 25: "          20180127  - better support for zsh complex commands
line 26: "          20170808: - better indent of line continuation
line 27: "          20170502: - get rid of buffer-shiftwidth function
line 28: "          20160912: - preserve indentation of here-doc blocks
line 29: "          20160627: - detect heredocs correctly
line 30: "          20160213: - detect function definition correctly
line 31: "          20160202: - use shiftwidth() function
line 32: "          20151215: - set b:undo_indent variable
line 33: "          20150728: - add foreach detection for zsh
line 34: 
line 35: if exists("b:did_indent")
line 36:   finish
line 37: endif
line 38: let b:did_indent = 1
line 39: 
line 40: setlocal indentexpr=GetShIndent()
line 41: setlocal indentkeys+=0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,0=end,),0=;;,0=;&
line 42: setlocal indentkeys+=0=fin,0=fil,0=fip,0=fir,0=fix
line 43: setlocal indentkeys-=:,0#
line 44: setlocal nosmartindent
line 45: 
line 46: let b:undo_indent = 'setlocal indentexpr< indentkeys< smartindent<'
line 47: 
line 48: if exists("*GetShIndent")
line 49:   finish
line 50: endif
line 51: 
line 52: let s:cpo_save = &cpo
line 53: set cpo&vim
line 54: 
line 55: let s:sh_indent_defaults = { 'default': function('shiftwidth'), 'continuation-line': function('shiftwidth'), 'case-labels': function('shiftwidth'), 'case-statements': function('shiftwidth'), 'case-breaks': 0 }
line 61: 
line 62: function! s:indent_value(option)
line 72: 
line 73: function! GetShIndent()
line 173: 
line 174: function! s:is_continuation_line(line)
line 186: 
line 187: function! s:find_continued_lnum(lnum)
line 194: 
line 195: function! s:is_function_definition(line)
line 200: 
line 201: function! s:is_array(line)
line 204: 
line 205: function! s:is_case_label(line, pnum)
line 237: 
line 238: function! s:is_case(line)
line 241: 
line 242: function! s:is_case_break(line)
line 245: 
line 246: function! s:is_here_doc(line)
line 253: 
line 254: function! s:is_case_ended(line)
line 257: 
line 258: function! s:is_case_empty(line)
line 265: 
line 266: function! s:escape(pattern)
line 269: 
line 270: function! s:is_empty(line)
line 273: 
line 274: function! s:end_block(line)
line 277: 
line 278: function! s:start_block(line)
line 281: 
line 282: function! s:find_start_block(lnum)
line 289: 
line 290: function! s:is_comment(line)
line 293: 
line 294: function! s:is_end_expression(line)
line 297: 
line 298: function! s:is_bash()
line 301: 
line 302: let &cpo = s:cpo_save
line 303: unlet s:cpo_save
finished sourcing /usr/local/share/nvim/runtime/indent/sh.vim
continuing in function <SNR>38_LoadIndent
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/indent/sh.vim"
Searching for "/usr/local/lib64/nvim/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/indent/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/indent/sh.vim"
line 15:         exe 'runtime! indent/' . name . '.lua'
line 15: runtime! indent/sh.lua
Searching for "indent/sh.lua" in runtime path
Searching for "/home/robbyk/.config/nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/indent/sh.lua"
Searching for "/usr/share/nvim/site/indent/sh.lua"
Searching for "/usr/local/share/nvim/runtime/indent/sh.lua"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/indent/sh.lua"
Searching for "/usr/local/lib64/nvim/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/indent/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/indent/sh.lua"
not found in runtime path: "indent/sh.lua"
line 16:       endfor
line 13:       for name in split(s, '\.')
line 14:         exe 'runtime! indent/' . name . '.vim'
line 15:         exe 'runtime! indent/' . name . '.lua'
line 16:       endfor
line 17:     endif
function <SNR>38_LoadIndent returning #0

continuing in FileType Autocommands for "*"

Executing FileType Autocommands for "*"
autocommand setlocal formatoptions-=c formatoptions-=r formatoptions-=o

Executing: setlocal formatoptions-=c formatoptions-=r formatoptions-=o
Executing FileType Autocommands for "sh"
autocommand setlocal ts=2 sts=2 sw=2 ai expandtab

Executing: setlocal ts=2 sts=2 sw=2 ai expandtab
Executing FileType Autocommands for "*"
autocommand exe "set syntax=" . expand("<amatch>")

Executing: exe "set syntax=" . expand("<amatch>")
Executing: set syntax=sh
Executing Syntax Autocommands for "*"
autocommand call s:SynSet()

Executing: call s:SynSet()
calling function <SNR>64_SynSet()

line 1:   " clear syntax for :set syntax=OFF  and any syntax name that doesn't exist
line 2:   syn clear
line 3:   if exists("b:current_syntax")
line 4:     unlet b:current_syntax
line 5:   endif
line 6: 
line 7:   let s = expand("<amatch>")
line 8:   if s == "ON"
line 9:     " :set syntax=ON
line 10:     if &filetype == ""
line 11:       echohl ErrorMsg
line 12:       echo "filetype unknown"
line 13:       echohl None
line 14:     endif
line 15:     let s = &filetype
line 16:   elseif s == "OFF"
line 17:     let s = ""
line 18:   endif
line 19: 
line 20:   if s != ""
line 21:     " Load the syntax file(s).  When there are several, separated by dots,
line 22:     " load each in sequence.  Skip empty entries.
line 23:     for name in split(s, '\.')
line 24:       if !empty(name)
line 25:         exe "runtime! syntax/" . name . ".vim syntax/" . name . "/*.vim"
line 25: runtime! syntax/sh.vim syntax/sh/*.vim
Searching for "syntax/sh.vim syntax/sh/*.vim" in runtime path
Searching for "/home/robbyk/.config/nvim/syntax/sh.vim"
Searching for "/home/robbyk/.config/nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/syntax/sh/*.vim"
Searching for "/usr/share/nvim/site/syntax/sh.vim"
Searching for "/usr/share/nvim/site/syntax/sh/*.vim"
Searching for "/usr/local/share/nvim/runtime/syntax/sh.vim"
chdir(/home/robbyk/.dotfiles)
chdir(/usr/local/share/nvim/runtime/syntax)
chdir(/home/robbyk/.dotfiles)
line 25: sourcing "/usr/local/share/nvim/runtime/syntax/sh.vim"
line 1: " Vim syntax file
line 2: " Language:^I^Ishell (sh) Korn shell (ksh) bash (sh)
line 3: " Maintainer:^I^ICharles E. Campbell <NcampObell@SdrPchip.AorgM-NOSPAM>
line 4: " Previous Maintainer:^ILennart Schultz <Lennart.Schultz@ecmwf.int>
line 5: " Last Change:^I^IOct 26, 2021
line 6: " Version:^I^I199
line 7: " URL:^I^Ihttp://www.drchip.org/astronaut/vim/index.html#SYNTAX_SH
line 8: " For options and settings, please use:      :help ft-sh-syntax
line 9: " This file includes many ideas from Eric Brunet (eric.brunet@ens.fr) and heredoc fixes from Felipe Contreras
line 10: 
line 11: " quit when a syntax file was already loaded {{{1
line 12: if exists("b:current_syntax")
line 13:   finish
line 14: endif
line 15: 
line 16: " If the shell script itself specifies which shell to use, use it
line 17: if getline(1) =~ '\<ksh\>'
line 18:  let b:is_kornshell = 1
line 19: elseif getline(1) =~ '\<bash\>'
line 20:  let b:is_bash      = 1
line 21: elseif getline(1) =~ '\<dash\>'
line 22:  let b:is_dash      = 1
line 23: elseif !exists("g:is_kornshell") && !exists("g:is_bash") && !exists("g:is_posix") && !exists("g:is_sh") && !exists("g:is_dash")
line 24:  " user did not specify which shell to use, and 
line 25:  " the script itself does not specify which shell to use. FYI: /bin/sh is ambiguous.
line 26:  " Assuming /bin/sh is executable, and if its a link, find out what it links to.
line 27:  let s:shell = ""
line 28:  if executable("/bin/sh")
line 29:   let s:shell = resolve("/bin/sh")
line 30:  elseif executable("/usr/bin/sh")
line 31:   let s:shell = resolve("/usr/bin/sh")
line 32:  endif
line 33:  if     s:shell =~ '\<ksh\>'
line 34:   let b:is_kornshell= 1
line 35:  elseif s:shell =~ '\<bash\>'
line 36:   let b:is_bash = 1
line 37:  elseif s:shell =~ '\<dash\>'
line 38:   let b:is_dash = 1
line 39:  endif
line 40:  unlet s:shell
line 41: endif
line 42: 
line 43: " handling /bin/sh with is_kornshell/is_sh {{{1
line 44: " b:is_sh will be set when "#! /bin/sh" is found;
line 45: " However, it often is just a masquerade by bash (typically Linux)
line 46: " or kornshell (typically workstations with Posix "sh").
line 47: " So, when the user sets "g:is_bash", "g:is_kornshell",
line 48: " or "g:is_posix", a b:is_sh is converted into b:is_bash/b:is_kornshell,
line 49: " respectively.
line 50: if !exists("b:is_kornshell") && !exists("b:is_bash") && !exists("b:is_dash")
line 51:   if exists("g:is_posix") && !exists("g:is_kornshell")
line 52:    let g:is_kornshell= g:is_posix
line 53:   endif
line 54:   if exists("g:is_kornshell")
line 55:     let b:is_kornshell= 1
line 56:     if exists("b:is_sh")
line 57:       unlet b:is_sh
line 58:     endif
line 59:   elseif exists("g:is_bash")
line 60:     let b:is_bash= 1
line 61:     if exists("b:is_sh")
line 62:       unlet b:is_sh
line 63:     endif
line 64:   elseif exists("g:is_dash")
line 65:     let b:is_dash= 1
line 66:     if exists("b:is_sh")
line 67:       unlet b:is_sh
line 68:     endif
line 69:   else
line 70:     let b:is_sh= 1
line 71:   endif
line 72: endif
line 73: 
line 74: " if b:is_dash, set b:is_posix too
line 75: if exists("b:is_dash")
line 76:  let b:is_posix= 1
line 77: endif
line 78: 
line 79: " set up default g:sh_fold_enabled {{{1
line 80: " ================================
line 81: if !exists("g:sh_fold_enabled")
line 82:  let g:sh_fold_enabled= 0
line 83: elseif g:sh_fold_enabled != 0 && !has("folding")
line 84:  let g:sh_fold_enabled= 0
line 85:  echomsg "Ignoring g:sh_fold_enabled=".g:sh_fold_enabled."; need to re-compile vim for +fold support"
line 86: endif
line 87: if !exists("s:sh_fold_functions")
line 88:  let s:sh_fold_functions= and(g:sh_fold_enabled,1)
line 89: endif
line 90: if !exists("s:sh_fold_heredoc")
line 91:  let s:sh_fold_heredoc  = and(g:sh_fold_enabled,2)
line 92: endif
line 93: if !exists("s:sh_fold_ifdofor")
line 94:  let s:sh_fold_ifdofor  = and(g:sh_fold_enabled,4)
line 95: endif
line 96: if g:sh_fold_enabled && &fdm == "manual"
line 97:  " Given that^Ithe^Iuser provided g:sh_fold_enabled
line 98:  " ^IAND^Ig:sh_fold_enabled is manual (usual default)
line 99:  " ^Iimplies^Ia desire for syntax-based folding
line 100:  setl fdm=syntax
line 101: endif
line 102: 
line 103: " set up the syntax-highlighting for iskeyword
line 104: if (v:version == 704 && has("patch-7.4.1142")) || v:version > 704
line 105:  if !exists("g:sh_syntax_isk") || (exists("g:sh_syntax_isk") && g:sh_syntax_isk)
line 106:   if exists("b:is_bash")
line 107:    exe "syn iskeyword ".&iskeyword.",-,:"
line 107: syn iskeyword @,48-57,_,192-255,-,:
line 108:   else
line 109:    exe "syn iskeyword ".&iskeyword.",-"
line 110:   endif
line 111:  endif
line 112: endif
line 113: 
line 114: " Set up folding commands for shell {{{1
line 115: " =================================
line 116: if s:sh_fold_functions
line 117:  com! -nargs=* ShFoldFunctions <args> fold
line 118: else
line 119:  com! -nargs=* ShFoldFunctions <args>
line 120: endif
line 121: if s:sh_fold_heredoc
line 122:  com! -nargs=* ShFoldHereDoc <args> fold
line 123: else
line 124:  com! -nargs=* ShFoldHereDoc <args>
line 125: endif
line 126: if s:sh_fold_ifdofor
line 127:  com! -nargs=* ShFoldIfDoFor <args> fold
line 128: else
line 129:  com! -nargs=* ShFoldIfDoFor <args>
line 130: endif
line 131: 
line 132: " sh syntax is case sensitive {{{1
line 133: syn case match
line 134: 
line 135: " Clusters: contains=@... clusters {{{1
line 136: "==================================
line 137: syn cluster shErrorList^Icontains=shDoError,shIfError,shInError,shCaseError,shEsacError,shCurlyError,shParenError,shTestError,shOK
line 138: if exists("b:is_kornshell") || exists("b:is_bash")
line 139:  syn cluster ErrorList add=shDTestError
line 140: endif
line 141: syn cluster shArithParenList^Icontains=shArithmetic,shCaseEsac,shComment,shDeref,shDo,shDerefSimple,shEcho,shEscape,shNumber,shOperator,shPosnParm,shExSingleQuote,shExDoubleQuote,shHereString,shRedir,shSingleQuote,shDoubleQuote,shStatement,shVariable,shAlias,shTest,shCtrlSeq,shSpecial,shParen,bashSpecialVariables,bashStatement,shIf,shFor,shFunctionKey,shFunctionOne,shFunctionTwo
line 142: syn cluster shArithList^Icontains=@shArithParenList,shParenError
line 143: syn cluster shCaseEsacList^Icontains=shCaseStart,shCaseLabel,shCase,shCaseBar,shCaseIn,shComment,shDeref,shDerefSimple,shCaseCommandSub,shCaseExSingleQuote,shCaseSingleQuote,shCaseDoubleQuote,shCtrlSeq,@shErrorList,shStringSpecial,shCaseRange
line 144: syn cluster shCaseList^Icontains=@shCommandSubList,shCaseEsac,shColon,shCommandSub,shCommandSubBQ,shComment,shDo,shEcho,shExpr,shFor,shHereDoc,shIf,shHereString,shRedir,shSetList,shSource,shStatement,shVariable,shCtrlSeq
line 145: if exists("b:is_kornshell") || exists("b:is_bash")
line 146:  syn cluster shCaseList^Iadd=shForPP
line 147: endif
line 148: syn cluster shCommandSubList^Icontains=shAlias,shArithmetic,shCmdParenRegion,shCommandSub,shComment,shCtrlSeq,shDeref,shDerefSimple,shDoubleQuote,shEcho,shEscape,shExDoubleQuote,shExpr,shExSingleQuote,shHereDoc,shNumber,shOperator,shOption,shPosnParm,shHereString,shRedir,shSingleQuote,shSpecial,shStatement,shSubSh,shTest,shVariable
line 149: syn cluster shCurlyList^Icontains=shNumber,shComma,shDeref,shDerefSimple,shDerefSpecial
line 150: " COMBAK: removing shEscape from shDblQuoteList fails ksh04:43
line 151: syn cluster shDblQuoteList^Icontains=shArithmetic,shCommandSub,shCommandSubBQ,shDeref,shDerefSimple,shPosnParm,shCtrlSeq,shSpecial,shSpecialDQ
line 152: syn cluster shDerefList^Icontains=shDeref,shDerefSimple,shDerefVar,shDerefSpecial,shDerefWordError,shDerefPSR,shDerefPPS
line 153: syn cluster shDerefVarList^Icontains=shDerefOffset,shDerefOp,shDerefVarArray,shDerefOpError
line 154: syn cluster shEchoList^Icontains=shArithmetic,shCommandSub,shCommandSubBQ,shDeref,shDerefSimple,shEscape,shExSingleQuote,shExDoubleQuote,shSingleQuote,shDoubleQuote,shCtrlSeq,shEchoQuote
line 155: syn cluster shExprList1^Icontains=shCharClass,shNumber,shOperator,shExSingleQuote,shExDoubleQuote,shSingleQuote,shDoubleQuote,shExpr,shDblBrace,shDeref,shDerefSimple,shCtrlSeq
line 156: syn cluster shExprList2^Icontains=@shExprList1,@shCaseList,shTest
line 157: syn cluster shFunctionList^Icontains=@shCommandSubList,shCaseEsac,shColon,shComment,shDo,shEcho,shExpr,shFor,shHereDoc,shIf,shOption,shHereString,shRedir,shSetList,shSource,shStatement,shVariable,shOperator,shCtrlSeq
line 158: if exists("b:is_kornshell") || exists("b:is_bash")
line 159:  syn cluster shFunctionList^Iadd=shRepeat,shDblBrace,shDblParen,shForPP
line 160: endif
line 161: syn cluster shHereBeginList^Icontains=@shCommandSubList
line 162: syn cluster shHereList^Icontains=shBeginHere,shHerePayload
line 163: syn cluster shHereListDQ^Icontains=shBeginHere,@shDblQuoteList,shHerePayload
line 164: syn cluster shIdList^Icontains=shCommandSub,shCommandSubBQ,shWrapLineOperator,shSetOption,shComment,shDeref,shDerefSimple,shHereString,shNumber,shOperator,shRedir,shExSingleQuote,shExDoubleQuote,shSingleQuote,shDoubleQuote,shExpr,shCtrlSeq,shStringSpecial,shAtExpr
line 165: syn cluster shIfList^Icontains=@shLoopList,shDblBrace,shDblParen,shFunctionKey,shFunctionOne,shFunctionTwo
line 166: syn cluster shLoopList^Icontains=@shCaseList,@shErrorList,shCaseEsac,shConditional,shDblBrace,shExpr,shFor,shIf,shOption,shSet,shTest,shTestOpr,shTouch
line 167: if exists("b:is_kornshell") || exists("b:is_bash")
line 168:  syn cluster shLoopoList^Iadd=shForPP
line 169: endif
line 170: syn cluster shPPSLeftList^Icontains=shAlias,shArithmetic,shCmdParenRegion,shCommandSub,shCtrlSeq,shDeref,shDerefSimple,shDoubleQuote,shEcho,shEscape,shExDoubleQuote,shExpr,shExSingleQuote,shHereDoc,shNumber,shOperator,shOption,shPosnParm,shHereString,shRedir,shSingleQuote,shSpecial,shStatement,shSubSh,shTest,shVariable
line 171: syn cluster shPPSRightList^Icontains=shComment,shDeref,shDerefSimple,shEscape,shPosnParm
line 172: syn cluster shSubShList^Icontains=@shCommandSubList,shCommandSubBQ,shCaseEsac,shColon,shCommandSub,shComment,shDo,shEcho,shExpr,shFor,shIf,shHereString,shRedir,shSetList,shSource,shStatement,shVariable,shCtrlSeq,shOperator
line 173: syn cluster shTestList^Icontains=shArithmetic,shCharClass,shCommandSub,shCommandSubBQ,shCtrlSeq,shDeref,shDerefSimple,shDoubleQuote,shSpecialDQ,shExDoubleQuote,shExpr,shExSingleQuote,shNumber,shOperator,shSingleQuote,shTest,shTestOpr
line 174: syn cluster shNoZSList^Icontains=shSpecialNoZS
line 175: syn cluster shForList^Icontains=shTestOpr,shNumber,shDerefSimple,shDeref,shCommandSub,shCommandSubBQ,shArithmetic
line 176: 
line 177: " Echo: {{{1
line 178: " ====
line 179: " This one is needed INSIDE a CommandSub, so that `echo bla` be correct
line 180: syn region shEcho matchgroup=shStatement start="\<echo\>"  skip="\\$" matchgroup=shEchoDelim end="$" matchgroup=NONE end="[<>;&|()`]"me=e-1 end="\d[<>]"me=e-2 end="#"me=e-1 contains=@shEchoList skipwhite nextgroup=shQuickComment
line 181: syn region shEcho matchgroup=shStatement start="\<print\>" skip="\\$" matchgroup=shEchoDelim end="$" matchgroup=NONE end="[<>;&|()`]"me=e-1 end="\d[<>]"me=e-2 end="#"me=e-1 contains=@shEchoList skipwhite nextgroup=shQuickComment
line 182: syn match  shEchoQuote contained^I'\%(\\\\\)*\\["`'()]'
line 183: 
line 184: " This must be after the strings, so that ... \" will be correct
line 185: syn region shEmbeddedEcho contained matchgroup=shStatement start="\<print\>" skip="\\$" matchgroup=shEchoDelim end="$" matchgroup=NONE end="[<>;&|`)]"me=e-1 end="\d[<>]"me=e-2 end="\s#"me=e-2 contains=shNumber,shExSingleQuote,shSingleQuote,shDeref,shDerefSimple,shSpecialVar,shOperator,shExDoubleQuote,shDoubleQuote,shCharClass,shCtrlSeq
line 186: 
line 187: " Alias: {{{1
line 188: " =====
line 189: if exists("b:is_kornshell") || exists("b:is_bash") || exists("b:is_posix")
line 190:  syn match shStatement "\<alias\>"
line 191:  syn region shAlias matchgroup=shStatement start="\<alias\>\s\+\(\h[-._[:alnum:]]\+\)\@="  skip="\\$" end="\>\|`"
line 192:  syn region shAlias matchgroup=shStatement start="\<alias\>\s\+\(\h[-._[:alnum:]]\+=\)\@=" skip="\\$" end="="
line 193: 
line 194:  " Touch: {{{1
line 195:  " =====
line 196:  syn match shTouch^I'\<touch\>[^;#]*'^Iskipwhite nextgroup=shComment contains=shTouchCmd,shDoubleQuote,shSingleQuote,shDeref,shDerefSimple
line 197:  syn match shTouchCmd^I'\<touch\>'^I^Icontained
line 198: endif
line 199: 
line 200: " Error Codes: {{{1
line 201: " ============
line 202: if !exists("g:sh_no_error")
line 203:  syn match   shDoError "\<done\>"
line 204:  syn match   shIfError "\<fi\>"
line 205:  syn match   shInError "\<in\>"
line 206:  syn match   shCaseError ";;"
line 207:  syn match   shEsacError "\<esac\>"
line 208:  syn match   shCurlyError "}"
line 209:  syn match   shParenError ")"
line 210:  syn match   shOK^I'\.\(done\|fi\|in\|esac\)'
line 211:  if exists("b:is_kornshell") || exists("b:is_bash")
line 212:   syn match     shDTestError "]]"
line 213:  endif
line 214:  syn match     shTestError "]"
line 215: endif
line 216: 
line 217: " Options: {{{1
line 218: " ====================
line 219: syn match   shOption^I"\s\zs[-+][-_a-zA-Z#@]\+"
line 220: syn match   shOption^I"\s\zs--[^ \t$=`'"|);]\+"
line 221: 
line 222: " File Redirection Highlighted As Operators: {{{1
line 223: "===========================================
line 224: syn match      shRedir^I"\d\=>\(&[-0-9]\)\="
line 225: syn match      shRedir^I"\d\=>>-\="
line 226: syn match      shRedir^I"\d\=<\(&[-0-9]\)\="
line 227: syn match      shRedir^I"\d<<-\="
line 228: 
line 229: " Operators: {{{1
line 230: " ==========
line 231: syn match   shOperator^I"<<\|>>"^I^Icontained
line 232: syn match   shOperator^I"[!&;|]"^I^Icontained
line 233: syn match   shOperator^I"\[[[^:]\|\]]"^I^Icontained
line 234: syn match   shOperator^I"[-=/*+%]\=="^I^Iskipwhite nextgroup=shPattern
line 235: syn match   shPattern^I"\<\S\+\())\)\@="^Icontained contains=shExSingleQuote,shSingleQuote,shExDoubleQuote,shDoubleQuote,shDeref
line 236: 
line 237: " Subshells: {{{1
line 238: " ==========
line 239: syn region shExpr  transparent matchgroup=shExprRegion  start="{" end="}"^I^Icontains=@shExprList2 nextgroup=shSpecialNxt
line 240: syn region shSubSh transparent matchgroup=shSubShRegion start="[^(]\zs(" end=")"^Icontains=@shSubShList nextgroup=shSpecialNxt
line 241: 
line 242: " Tests: {{{1
line 243: "=======
line 244: syn region shExpr^Imatchgroup=shRange start="\[" skip=+\\\\\|\\$\|\[+ end="\]" contains=@shTestList,shSpecial
line 245: syn region shTest^Itransparent matchgroup=shStatement start="\<test\s" skip=+\\\\\|\\$+ matchgroup=NONE end="[;&|]"me=e-1 end="$" contains=@shExprList1
line 246: syn region shNoQuote^Istart='\S'^Iskip='\%(\\\\\)*\\.'^Iend='\ze\s' end="\ze['"]"^Icontained contains=shDerefSimple,shDeref
line 247: syn match  shAstQuote^Icontained^I'\*\ze"'^Inextgroup=shString
line 248: syn match  shTestOpr^Icontained^I'[^-+/%]\zs=' skipwhite nextgroup=shTestDoubleQuote,shTestSingleQuote,shTestPattern
line 249: syn match  shTestOpr^Icontained^I"<=\|>=\|!=\|==\|=\~\|-.\>\|-\(nt\|ot\|ef\|eq\|ne\|lt\|le\|gt\|ge\)\>\|[!<>]"
line 250: syn match  shTestPattern^Icontained^I'\w\+'
line 251: syn region shTestDoubleQuote^Icontained^Istart='\%(\%(\\\\\)*\\\)\@<!"' skip=+\\\\\|\\"+ end='"'^Icontains=shDeref,shDerefSimple,shDerefSpecial
line 252: syn match  shTestSingleQuote^Icontained^I'\\.'^Inextgroup=shTestSingleQuote
line 253: syn match  shTestSingleQuote^Icontained^I"'[^']*'"
line 254: if exists("b:is_kornshell") || exists("b:is_bash")
line 255:  syn region  shDblBrace matchgroup=Delimiter start="\[\["^Iskip=+\%(\\\\\)*\\$+ end="\]\]"^Icontains=@shTestList,shAstQuote,shNoQuote,shComment
line 256:  syn region  shDblParen matchgroup=Delimiter start="(("^Iskip=+\%(\\\\\)*\\$+ end="))"^Icontains=@shTestList,shComment
line 257: endif
line 258: 
line 259: " Character Class In Range: {{{1
line 260: " =========================
line 261: syn match   shCharClass^Icontained^I"\[:\(backspace\|escape\|return\|xdigit\|alnum\|alpha\|blank\|cntrl\|digit\|graph\|lower\|print\|punct\|space\|upper\|tab\):\]"
line 262: 
line 263: " Loops: do, if, while, until {{{1
line 264: " ======
line 265: ShFoldIfDoFor syn region shDo^Itransparent^Imatchgroup=shConditional start="\<do\>" matchgroup=shConditional end="\<done\>"^I^I^Icontains=@shLoopList
line 265: syn region shDo^Itransparent^Imatchgroup=shConditional start="\<do\>" matchgroup=shConditional end="\<done\>"^I^I^Icontains=@shLoopList
line 266: ShFoldIfDoFor syn region shIf^Itransparent^Imatchgroup=shConditional start="\<if\_s" matchgroup=shConditional skip=+-fi\>+ end="\<;\_s*then\>" end="\<fi\>"^Icontains=@shIfList
line 266: syn region shIf^Itransparent^Imatchgroup=shConditional start="\<if\_s" matchgroup=shConditional skip=+-fi\>+ end="\<;\_s*then\>" end="\<fi\>"^Icontains=@shIfList
line 267: ShFoldIfDoFor syn region shFor^I^Imatchgroup=shLoop start="\<for\ze\_s\s*\%(((\)\@!" end="\<in\>" end="\<do\>"me=e-2^I^I^Icontains=@shLoopList,shDblParen skipwhite nextgroup=shCurlyIn
line 267: syn region shFor^I^Imatchgroup=shLoop start="\<for\ze\_s\s*\%(((\)\@!" end="\<in\>" end="\<do\>"me=e-2^I^I^Icontains=@shLoopList,shDblParen skipwhite nextgroup=shCurlyIn
line 268: if exists("b:is_kornshell") || exists("b:is_bash")
line 269:  ShFoldIfDoFor syn region shForPP^Imatchgroup=shLoop start='\<for\>\_s*((' end='))' contains=@shForList
line 269: syn region shForPP^Imatchgroup=shLoop start='\<for\>\_s*((' end='))' contains=@shForList
line 270: endif
line 271: 
line 272: if exists("b:is_kornshell") || exists("b:is_bash") || exists("b:is_posix")
line 273:  syn cluster shCaseList^Iadd=shRepeat
line 274:  syn cluster shFunctionList^Iadd=shRepeat
line 275:  syn region shRepeat   matchgroup=shLoop   start="\<while\_s" end="\<do\>"me=e-2^Icontains=@shLoopList,shDblParen,shDblBrace
line 276:  syn region shRepeat   matchgroup=shLoop   start="\<until\_s" end="\<do\>"me=e-2^Icontains=@shLoopList,shDblParen,shDblBrace
line 277:  if !exists("b:is_posix")
line 278:   syn region shCaseEsac matchgroup=shConditional start="\<select\s" matchgroup=shConditional end="\<in\>" end="\<do\>" contains=@shLoopList
line 279:  endif
line 280: else
line 281:  syn region shRepeat   matchgroup=shLoop   start="\<while\_s" end="\<do\>"me=e-2^I^Icontains=@shLoopList
line 282:  syn region shRepeat   matchgroup=shLoop   start="\<until\_s" end="\<do\>"me=e-2^I^Icontains=@shLoopList
line 283: endif
line 284: syn region shCurlyIn   contained^Imatchgroup=Delimiter start="{" end="}" contains=@shCurlyList
line 285: syn match  shComma     contained^I","
line 286: 
line 287: " Case: case...esac {{{1
line 288: " ====
line 289: syn match shCaseBar^Icontained skipwhite "\(^\|[^\\]\)\(\\\\\)*\zs|"^I^Inextgroup=shCase,shCaseStart,shCaseBar,shComment,shCaseExSingleQuote,shCaseSingleQuote,shCaseDoubleQuote
line 290: syn match shCaseStart^Icontained skipwhite skipnl "("^I^I^Inextgroup=shCase,shCaseBar
line 291: syn match shCaseLabel^Icontained skipwhite^I"\%(\\.\|[-a-zA-Z0-9_*.]\)\+"^Icontains=shCharClass
line 292: if exists("b:is_bash")
line 293:  ShFoldIfDoFor syn region^IshCase^Icontained skipwhite skipnl matchgroup=shSnglCase start="\%(\\.\|[^#$()'" \t]\)\{-}\zs)"  end=";;" end=";&" end=";;&" end="esac"me=s-1^Icontains=@shCaseList^Inextgroup=shCaseStart,shCase,shComment
line 293: syn region^IshCase^Icontained skipwhite skipnl matchgroup=shSnglCase start="\%(\\.\|[^#$()'" \t]\)\{-}\zs)"  end=";;" end=";&" end=";;&" end="esac"me=s-1^Icontains=@shCaseList^Inextgroup=shCaseStart,shCase,shComment
line 294: else                                                                                                                     
line 295:  ShFoldIfDoFor syn region^IshCase^Icontained skipwhite skipnl matchgroup=shSnglCase start="\%(\\.\|[^#$()'" \t]\)\{-}\zs)"  end=";;" end="esac"me=s-1^I^Icontains=@shCaseList^Inextgroup=shCaseStart,shCase,shComment
line 296: endif
line 297: ShFoldIfDoFor syn region^IshCaseEsac^Imatchgroup=shConditional start="\<case\>" end="\<esac\>"^Icontains=@shCaseEsacList
line 297: syn region^IshCaseEsac^Imatchgroup=shConditional start="\<case\>" end="\<esac\>"^Icontains=@shCaseEsacList
line 298: 
line 299: syn keyword shCaseIn^Icontained skipwhite skipnl in^I^I^Inextgroup=shCase,shCaseStart,shCaseBar,shComment,shCaseExSingleQuote,shCaseSingleQuote,shCaseDoubleQuote
line 300: if exists("b:is_bash")
line 301:  syn region  shCaseExSingleQuote^Imatchgroup=shQuote start=+\$'+ skip=+\\\\\|\\.+ end=+'+^Icontains=shStringSpecial,shSpecial^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 302: elseif !exists("g:sh_no_error")
line 303:  syn region  shCaseExSingleQuote^Imatchgroup=Error start=+\$'+ skip=+\\\\\|\\.+ end=+'+^Icontains=shStringSpecial^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 304: endif
line 305: syn region  shCaseSingleQuote^Imatchgroup=shQuote start=+'+ end=+'+^I^Icontains=shStringSpecial^I^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 306: syn region  shCaseDoubleQuote^Imatchgroup=shQuote start=+"+ skip=+\\\\\|\\.+ end=+"+^Icontains=@shDblQuoteList,shStringSpecial^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 307: syn region  shCaseCommandSub^Istart=+`+ skip=+\\\\\|\\.+ end=+`+^I^Icontains=@shCommandSubList^I^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 308: if exists("b:is_bash")
line 309:  syn region  shCaseRange^Imatchgroup=Delimiter start=+\[+ skip=+\\\\+ end=+\]+^Icontained^Icontains=shCharClass
line 310:  syn match   shCharClass^I'\[:\%(alnum\|alpha\|ascii\|blank\|cntrl\|digit\|graph\|lower\|print\|punct\|space\|upper\|word\|or\|xdigit\):\]'^I^I^Icontained
line 311: else
line 312:  syn region  shCaseRange^Imatchgroup=Delimiter start=+\[+ skip=+\\\\+ end=+\]+^Icontained
line 313: endif
line 314: " Misc: {{{1
line 315: "======
line 316: syn match   shWrapLineOperator "\\$"
line 317: syn region  shCommandSubBQ   ^Istart="`" skip="\\\\\|\\." end="`"^Icontains=shBQComment,@shCommandSubList
line 318: "COMBAK: see ksh13:50
line 319: "syn match   shEscape^Icontained^I'\%(^\)\@!\%(\\\\\)*\\.'^Inextgroup=shSingleQuote,shDoubleQuote,shComment
line 320: "COMBAK: see sh11:27
line 321: syn match   shEscape^Icontained^I'\%(^\)\@!\%(\\\\\)*\\.'^Inextgroup=shComment
line 322: "COMBAK: see ksh13:53
line 323: "syn match   shEscape^Icontained^I'\%(^\)\@!\%(\\\\\)*\\.'
line 324: 
line 325: " $() and $(()): {{{1
line 326: " $(..) is not supported by sh (Bourne shell).  However, apparently
line 327: " some systems (HP?) have as their /bin/sh a (link to) Korn shell
line 328: " (ie. Posix compliant shell).  /bin/ksh should work for those
line 329: " systems too, however, so the following syntax will flag $(..) as
line 330: " an Error under /bin/sh.  By consensus of vimdev'ers!
line 331: if exists("b:is_kornshell") || exists("b:is_bash") || exists("b:is_posix")
line 332:  syn region shCommandSub matchgroup=shCmdSubRegion start="\$("  skip='\\\\\|\\.' end=")"  contains=@shCommandSubList
line 333:  syn region shArithmetic matchgroup=shArithRegion  start="\$((" skip='\\\\\|\\.' end="))" contains=@shArithList
line 334:  syn region shArithmetic matchgroup=shArithRegion  start="\$\[" skip='\\\\\|\\.' end="\]" contains=@shArithList
line 335:  syn match  shSkipInitWS contained^I"^\s\+"
line 336: elseif !exists("g:sh_no_error")
line 337:  syn region shCommandSub matchgroup=Error start="\$(" end=")" contains=@shCommandSubList
line 338: endif
line 339: syn region shCmdParenRegion matchgroup=shCmdSubRegion start="(\ze[^(]" skip='\\\\\|\\.' end=")" contains=@shCommandSubList
line 340: 
line 341: if exists("b:is_bash")
line 342:  syn cluster shCommandSubList add=bashSpecialVariables,bashStatement
line 343:  syn cluster shCaseList add=bashAdminStatement,bashStatement
line 344:  syn keyword bashSpecialVariables contained auto_resume BASH BASH_ALIASES BASH_ALIASES BASH_ARGC BASH_ARGC BASH_ARGV BASH_ARGV BASH_CMDS BASH_CMDS BASH_COMMAND BASH_COMMAND BASH_ENV BASH_EXECUTION_STRING BASH_EXECUTION_STRING BASH_LINENO BASH_LINENO BASHOPTS BASHOPTS BASHPID BASHPID BASH_REMATCH BASH_REMATCH BASH_SOURCE BASH_SOURCE BASH_SUBSHELL BASH_SUBSHELL BASH_VERSINFO BASH_VERSION BASH_XTRACEFD BASH_XTRACEFD CDPATH COLUMNS COLUMNS COMP_CWORD COMP_CWORD COMP_KEY COMP_KEY COMP_LINE COMP_LINE COMP_POINT COMP_POINT COMPREPLY COMPREPLY COMP_TYPE COMP_TYPE COMP_WORDBREAKS COMP_WORDBREAKS COMP_WORDS COMP_WORDS COPROC COPROC DIRSTACK EMACS EMACS ENV ENV EUID FCEDIT FIGNORE FUNCNAME FUNCNAME FUNCNEST FUNCNEST GLOBIGNORE GROUPS histchars HISTCMD HISTCONTROL HISTFILE HISTFILESIZE HISTIGNORE HISTSIZE HISTTIMEFORMAT HISTTIMEFORMAT HOME HOSTFILE HOSTNAME HOSTTYPE IFS IGNOREEOF INPUTRC LANG LC_ALL LC_COLLATE LC_CTYPE LC_CTYPE LC_MESSAGES LC_NUMERIC LC_NUMERIC LINENO LINES LINES MACHTYPE MAIL MAILCHECK MAILPAT
line 345:  syn keyword bashStatement chmod clear complete du egrep expr fgrep find gnufind gnugrep grep less ls mkdir mv rm rmdir rpm sed sleep sort strip tail
line 346:  syn keyword bashAdminStatement daemon killall killproc nice reload restart start status stop
line 347:  syn keyword bashStatement^Icommand compgen
line 348: endif
line 349: 
line 350: if exists("b:is_kornshell") || exists("b:is_posix")
line 351:  syn cluster shCommandSubList add=kshSpecialVariables,kshStatement
line 352:  syn cluster shCaseList add=kshStatement
line 353:  syn keyword kshSpecialVariables contained CDPATH COLUMNS EDITOR ENV ERRNO FCEDIT FPATH HISTFILE HISTSIZE HOME IFS LINENO LINES MAIL MAILCHECK MAILPATH OLDPWD OPTARG OPTIND PATH PPID PS1 PS2 PS3 PS4 PWD RANDOM REPLY SECONDS SHELL TMOUT VISUAL
line 354:  syn keyword kshStatement cat chmod clear cp du egrep expr fgrep find grep killall less ls mkdir mv nice printenv rm rmdir sed sort strip stty tail tput
line 355:  syn keyword kshStatement command setgroups setsenv
line 356: endif
line 357: 
line 358: syn match   shSource^I"^\.\s"
line 359: syn match   shSource^I"\s\.\s"
line 360: "syn region  shColon^Istart="^\s*:" end="$" end="\s#"me=e-2 contains=@shColonList
line 361: "syn region  shColon^Istart="^\s*\zs:" end="$" end="\s#"me=e-2
line 362: if exists("b:is_kornshell") || exists("b:is_posix")
line 363:  syn match   shColon^I'^\s*\zs:'
line 364: endif
line 365: 
line 366: " String And Character Constants: {{{1
line 367: "================================
line 368: syn match   shNumber^I"\<\d\+\>#\="
line 369: syn match   shNumber^I"\<-\=\.\=\d\+\>#\="
line 370: syn match   shCtrlSeq^I"\\\d\d\d\|\\[abcfnrtv0]"^I^I^Icontained
line 371: if exists("b:is_bash")
line 372:  syn match   shSpecial^I"[^\\]\(\\\\\)*\zs\\\o\o\o\|\\x\x\x\|\\c[^"]\|\\[abefnrtv]"^Icontained
line 373:  syn match   shSpecial^I"^\(\\\\\)*\zs\\\o\o\o\|\\x\x\x\|\\c[^"]\|\\[abefnrtv]"^Icontained
line 374:  syn region  shExSingleQuote^Imatchgroup=shQuote start=+\$'+ skip=+\\\\\|\\.+ end=+'+^Icontains=shStringSpecial,shSpecial^I^Inextgroup=shSpecialNxt
line 375:  syn region  shExDoubleQuote^Imatchgroup=shQuote start=+\$"+ skip=+\\\\\|\\.\|\\"+ end=+"+^Icontains=@shDblQuoteList,shStringSpecial,shSpecial^Inextgroup=shSpecialNxt
line 376: elseif !exists("g:sh_no_error")
line 377:  syn region  shExSingleQuote^ImatchGroup=Error start=+\$'+ skip=+\\\\\|\\.+ end=+'+^Icontains=shStringSpecial
line 378:  syn region  shExDoubleQuote^ImatchGroup=Error start=+\$"+ skip=+\\\\\|\\.+ end=+"+^Icontains=shStringSpecial
line 379: endif
line 380: syn region  shSingleQuote^Imatchgroup=shQuote start=+'+ end=+'+^I^Icontains=@Spell^Inextgroup=shSpecialStart,shSpecialSQ
line 381: syn region  shDoubleQuote^Imatchgroup=shQuote start=+\%(\%(\\\\\)*\\\)\@<!"+ skip=+\\.+ end=+"+^I^I^Icontains=@shDblQuoteList,shStringSpecial,@Spell^Inextgroup=shSpecialStart
line 382: syn match   shStringSpecial^I"[^[:print:] \t]"^I^I^Icontained
line 383: syn match   shStringSpecial^I"[^\\]\zs\%(\\\\\)*\(\\[\\"'`$()#]\)\+"^I^I^Inextgroup=shComment
line 384: syn match   shSpecialSQ^I"[^\\]\zs\%(\\\\\)*\(\\[\\"'`$()#]\)\+"^I^Icontained^Inextgroup=shBkslshSnglQuote,@shNoZSList
line 385: syn match   shSpecialDQ^I"[^\\]\zs\%(\\\\\)*\(\\[\\"'`$()#]\)\+"^I^Icontained^Inextgroup=shBkslshDblQuote,@shNoZSList
line 386: syn match   shSpecialStart^I"\%(\\\\\)*\\[\\"'`$()#]"^I^I^Icontained^Inextgroup=shBkslshSnglQuote,shBkslshDblQuote,@shNoZSList
line 387: syn match   shSpecial^I"^\%(\\\\\)*\\[\\"'`$()#]"
line 388: syn match   shSpecialNoZS^Icontained^I"\%(\\\\\)*\\[\\"'`$()#]"
line 389: syn match   shSpecialNxt^Icontained^I"\\[\\"'`$()#]"
line 390: "syn region  shBkslshSnglQuote^Icontained^Imatchgroup=shQuote start=+'+ end=+'+^Icontains=@Spell^Inextgroup=shSpecialStart
line 391: "syn region  shBkslshDblQuote^Icontained^Imatchgroup=shQuote start=+"+ skip=+\\"+ end=+"+^Icontains=@shDblQuoteList,shStringSpecial,@Spell^Inextgroup=shSpecialStart
line 392: 
line 393: " Comments: {{{1
line 394: "==========
line 395: syn cluster^IshCommentGroup^Icontains=shTodo,@Spell
line 396: if exists("b:is_bash")
line 397:  syn match^IshTodo^Icontained^I^I"\<\%(COMBAK\|FIXME\|TODO\|XXX\)\ze:\=\>"
line 398: else
line 399:  syn keyword^IshTodo^Icontained^I^ICOMBAK FIXME TODO XXX
line 400: endif
line 401: syn match^IshComment^I^I"^\s*\zs#.*$"^Icontains=@shCommentGroup
line 402: syn match^IshComment^I^I"\s\zs#.*$"^Icontains=@shCommentGroup
line 403: syn match^IshComment^Icontained^I"#.*$"^Icontains=@shCommentGroup
line 404: syn match^IshQuickComment^Icontained^I"#.*$"          contains=@shCommentGroup
line 405: syn match^IshBQComment^Icontained^I"#.\{-}\ze`"^Icontains=@shCommentGroup
line 406: 
line 407: " Here Documents: {{{1
line 408: "  (modified by Felipe Contreras)
line 409: " =========================================
line 410: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc01 start="<<\s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc01 end="^\z1\s*$"^Icontains=@shDblQuoteList
line 410: syn region shHereDoc matchgroup=shHereDoc01 start="<<\s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc01 end="^\z1\s*$"^Icontains=@shDblQuoteList
line 411: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc02 start="<<-\s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc02 end="^\s*\z1\s*$"^Icontains=@shDblQuoteList
line 411: syn region shHereDoc matchgroup=shHereDoc02 start="<<-\s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc02 end="^\s*\z1\s*$"^Icontains=@shDblQuoteList
line 412: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc03 start="<<\s*\\\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc03 end="^\z1\s*$"
line 412: syn region shHereDoc matchgroup=shHereDoc03 start="<<\s*\\\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc03 end="^\z1\s*$"
line 413: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc04 start="<<-\s*\\\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc04 end="^\s*\z1\s*$"
line 413: syn region shHereDoc matchgroup=shHereDoc04 start="<<-\s*\\\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc04 end="^\s*\z1\s*$"
line 414: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc05 start="<<\s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc05 end="^\z1\s*$"
line 414: syn region shHereDoc matchgroup=shHereDoc05 start="<<\s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc05 end="^\z1\s*$"
line 415: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc06 start="<<-\s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc06 end="^\s*\z1\s*$"
line 415: syn region shHereDoc matchgroup=shHereDoc06 start="<<-\s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc06 end="^\s*\z1\s*$"
line 416: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc07 start="<<\s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc07 end="^\z1\s*$"
line 416: syn region shHereDoc matchgroup=shHereDoc07 start="<<\s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc07 end="^\z1\s*$"
line 417: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc08 start="<<-\s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc08 end="^\s*\z1\s*$"
line 417: syn region shHereDoc matchgroup=shHereDoc08 start="<<-\s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc08 end="^\s*\z1\s*$"
line 418: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc09 start="<<\s*\\\_$\_s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc09 end="^\z1\s*$"^Icontains=@shDblQuoteList
line 418: syn region shHereDoc matchgroup=shHereDoc09 start="<<\s*\\\_$\_s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc09 end="^\z1\s*$"^Icontains=@shDblQuoteList
line 419: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc10 start="<<-\s*\\\_$\_s*\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc10 end="^\s*\z1\s*$"^Icontains=@shDblQuoteList
line 419: syn region shHereDoc matchgroup=shHereDoc10 start="<<-\s*\\\_$\_s*\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc10 end="^\s*\z1\s*$"^Icontains=@shDblQuoteList
line 420: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc11 start="<<\s*\\\_$\_s*\\\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc11 end="^\z1\s*$"
line 420: syn region shHereDoc matchgroup=shHereDoc11 start="<<\s*\\\_$\_s*\\\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc11 end="^\z1\s*$"
line 421: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc12 start="<<-\s*\\\_$\_s*\\\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc12 end="^\s*\z1\s*$"
line 421: syn region shHereDoc matchgroup=shHereDoc12 start="<<-\s*\\\_$\_s*\\\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc12 end="^\s*\z1\s*$"
line 422: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc13 start="<<\s*\\\_$\_s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc13 end="^\z1\s*$"
line 422: syn region shHereDoc matchgroup=shHereDoc13 start="<<\s*\\\_$\_s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc13 end="^\z1\s*$"
line 423: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc14 start="<<-\s*\\\_$\_s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc14 end="^\s*\z1\s*$"
line 423: syn region shHereDoc matchgroup=shHereDoc14 start="<<-\s*\\\_$\_s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc14 end="^\s*\z1\s*$"
line 424: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc15 start="<<\s*\\\_$\_s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc15 end="^\z1\s*$"
line 424: syn region shHereDoc matchgroup=shHereDoc15 start="<<\s*\\\_$\_s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc15 end="^\z1\s*$"
line 425: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc16 start="<<-\s*\\\_$\_s*\"\z([^"]\+\)\""^Imatchgroup=shHereDoc16 end="^\s*\z1\s*$"
line 425: syn region shHereDoc matchgroup=shHereDoc16 start="<<-\s*\\\_$\_s*\"\z([^"]\+\)\""^Imatchgroup=shHereDoc16 end="^\s*\z1\s*$"
line 426: 
line 427: 
line 428: " Here Strings: {{{1
line 429: " =============
line 430: " available for: bash; ksh (really should be ksh93 only) but not if its a posix
line 431: if exists("b:is_bash") || (exists("b:is_kornshell") && !exists("b:is_posix"))
line 432:  syn match shHereString "<<<"^Iskipwhite^Inextgroup=shCmdParenRegion
line 433: endif
line 434: 
line 435: " Identifiers: {{{1
line 436: "=============
line 437: syn match  shSetOption^I"\s\zs[-+][a-zA-Z0-9]\+\>"^Icontained
line 438: syn match  shVariable^I"\<\h\w*\ze="^I^I^Inextgroup=shVarAssign
line 439: syn match  shVarAssign^I"="^I^Icontained^Inextgroup=shCmdParenRegion,shPattern,shDeref,shDerefSimple,shDoubleQuote,shExDoubleQuote,shSingleQuote,shExSingleQuote,shVar
line 440: syn match  shVar^Icontained^I"\h\w*"
line 441: syn region shAtExpr^Icontained^Istart="@(" end=")" contains=@shIdList
line 442: if exists("b:is_bash")
line 443:  syn match  shSet "^\s*set\ze\s\+$"
line 444:  syn region shSetList oneline matchgroup=shSet start="\<\%(declare\|local\|export\)\>\ze[/a-zA-Z_]\@!" end="$"^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+#\|="^Icontains=@shIdList
line 445:  syn region shSetList oneline matchgroup=shSet start="\<\%(set\|unset\)\>[/a-zA-Z_]\@!" end="\ze[;|#)]\|$"^I^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+="^Icontains=@shIdList nextgroup=shComment
line 446: elseif exists("b:is_kornshell") || exists("b:is_posix")
line 447:  syn match  shSet "^\s*set\ze\s\+$"
line 448:  if exists("b:is_dash")
line 449:   syn region shSetList oneline matchgroup=shSet start="\<\%(local\)\>\ze[/]\@!" end="$"^I                 matchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+[#=]"^Icontains=@shIdList
line 450:  endif
line 451:  syn region shSetList oneline matchgroup=shSet start="\<\(export\)\>\ze[/]\@!" end="$"^I^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+[#=]"^Icontains=@shIdList
line 452:  syn region shSetList oneline matchgroup=shSet start="\<\%(set\|unset\>\)\ze[/a-zA-Z_]\@!" end="\ze[;|#)]\|$"^I^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+[#=]"^Icontains=@shIdList nextgroup=shComment
line 453: else
line 454:  syn region shSetList oneline matchgroup=shSet start="\<\(set\|export\|unset\)\>\ze[/a-zA-Z_]\@!" end="\ze[;|#)]\|$"^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+[#=]"^Icontains=@shIdList
line 455: endif
line 456: 
line 457: " Functions: {{{1
line 458: if !exists("b:is_posix")
line 459:  syn keyword shFunctionKey function^Iskipwhite skipnl nextgroup=shFunctionTwo
line 460: endif
line 461: 
line 462: if exists("b:is_bash")
line 463:  ShFoldFunctions syn region shFunctionOne^Imatchgroup=shFunction start="^\s*[A-Za-z_0-9:][-a-zA-Z_0-9:]*\s*()\_s*{"^I^Iend="}"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 463: syn region shFunctionOne^Imatchgroup=shFunction start="^\s*[A-Za-z_0-9:][-a-zA-Z_0-9:]*\s*()\_s*{"^I^Iend="}"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 464:  ShFoldFunctions syn region shFunctionTwo^Imatchgroup=shFunction start="\%(do\)\@!\&\<[A-Za-z_0-9:][-a-zA-Z_0-9:]*\>\s*\%(()\)\=\_s*{"^Iend="}"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 464: syn region shFunctionTwo^Imatchgroup=shFunction start="\%(do\)\@!\&\<[A-Za-z_0-9:][-a-zA-Z_0-9:]*\>\s*\%(()\)\=\_s*{"^Iend="}"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 465:  ShFoldFunctions syn region shFunctionThree^Imatchgroup=shFunction start="^\s*[A-Za-z_0-9:][-a-zA-Z_0-9:]*\s*()\_s*("^I^Iend=")"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 465: syn region shFunctionThree^Imatchgroup=shFunction start="^\s*[A-Za-z_0-9:][-a-zA-Z_0-9:]*\s*()\_s*("^I^Iend=")"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 466:  ShFoldFunctions syn region shFunctionFour^Imatchgroup=shFunction start="\%(do\)\@!\&\<[A-Za-z_0-9:][-a-zA-Z_0-9:]*\>\s*\%(()\)\=\_s*)"^Iend=")"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 466: syn region shFunctionFour^Imatchgroup=shFunction start="\%(do\)\@!\&\<[A-Za-z_0-9:][-a-zA-Z_0-9:]*\>\s*\%(()\)\=\_s*)"^Iend=")"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 467: else
line 468:  ShFoldFunctions syn region shFunctionOne^Imatchgroup=shFunction start="^\s*\h\w*\s*()\_s*{"^I^I^Iend="}"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 469:  ShFoldFunctions syn region shFunctionTwo^Imatchgroup=shFunction start="\%(do\)\@!\&\<\h\w*\>\s*\%(()\)\=\_s*{"^I^Iend="}"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 470:  ShFoldFunctions syn region shFunctionThree^Imatchgroup=shFunction start="^\s*\h\w*\s*()\_s*("^I^I^Iend=")"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 471:  ShFoldFunctions syn region shFunctionFour^Imatchgroup=shFunction start="\%(do\)\@!\&\<\h\w*\>\s*\%(()\)\=\_s*("^I^Iend=")"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 472: endif
line 473: 
line 474: " Parameter Dereferencing: {{{1
line 475: " ========================
line 476: if !exists("g:sh_no_error")
line 477:  syn match  shDerefWordError^I"[^}$[~]"^Icontained
line 478: endif
line 479: syn match  shDerefSimple^I"\$\%(\h\w*\|\d\)"^Inextgroup=@shNoZSList
line 480: syn region shDeref^Imatchgroup=PreProc start="\${" end="}"^Icontains=@shDerefList,shDerefVarArray nextgroup=shSpecialStart
line 481: syn match  shDerefSimple^I"\$[-#*@!?]"^Inextgroup=@shNoZSList
line 482: syn match  shDerefSimple^I"\$\$"^Inextgroup=@shNoZSList
line 483: syn match  shDerefSimple^I"\${\d}"^Inextgroup=@shNoZSList^Inextgroup=shSpecialStart
line 484: if exists("b:is_bash") || exists("b:is_kornshell") || exists("b:is_posix")
line 485:  syn region shDeref^Imatchgroup=PreProc start="\${##\=" end="}"^Icontains=@shDerefList^Inextgroup=@shSpecialNoZS,shSpecialStart
line 486:  syn region shDeref^Imatchgroup=PreProc start="\${\$\$" end="}"^Icontains=@shDerefList^Inextgroup=@shSpecialNoZS,shSpecialStart
line 487: endif
line 488: 
line 489: " ksh: ${!var[*]} array index list syntax: {{{1
line 490: " ========================================
line 491: if exists("b:is_kornshell") || exists("b:is_posix")
line 492:  syn region shDeref^Imatchgroup=PreProc start="\${!" end="}"^Icontains=@shDerefVarArray
line 493: endif
line 494: 
line 495: " bash: ${!prefix*} and ${#parameter}: {{{1
line 496: " ====================================
line 497: if exists("b:is_bash")
line 498:  syn region shDeref^Imatchgroup=PreProc start="\${!" end="\*\=}"^Icontains=@shDerefList,shDerefOffset
line 499:  syn match  shDerefVar^Icontained^I"{\@<=!\h\w*"^I^Inextgroup=@shDerefVarList
line 500: endif
line 501: if exists("b:is_kornshell")
line 502:  syn match  shDerefVar^Icontained^I"{\@<=!\h\w*[[:alnum:]_.]*"^Inextgroup=@shDerefVarList
line 503: endif
line 504: 
line 505: syn match  shDerefSpecial^Icontained^I"{\@<=[-*@?0]"^I^Inextgroup=shDerefOp,shDerefOffset,shDerefOpError
line 506: syn match  shDerefSpecial^Icontained^I"\({[#!]\)\@<=[[:alnum:]*@_]\+"^Inextgroup=@shDerefVarList,shDerefOp
line 507: syn match  shDerefVar^Icontained^I"{\@<=\h\w*"^I^Inextgroup=@shDerefVarList
line 508: syn match  shDerefVar^Icontained^I'\d'                            nextgroup=@shDerefVarList
line 509: if exists("b:is_kornshell") || exists("b:is_posix")
line 510:   syn match  shDerefVar^Icontained^I"{\@<=\h\w*[[:alnum:]_.]*"^Inextgroup=@shDerefVarList
line 511: endif
line 512: 
line 513: " sh ksh bash : ${var[... ]...}  array reference: {{{1
line 514: syn region  shDerefVarArray   contained^Imatchgroup=shDeref start="\[" end="]"^Icontains=@shCommandSubList nextgroup=shDerefOp,shDerefOpError
line 515: 
line 516: " Special ${parameter OPERATOR word} handling: {{{1
line 517: " sh ksh bash : ${parameter:-word}    word is default value
line 518: " sh ksh bash : ${parameter:=word}    assign word as default value
line 519: " sh ksh bash : ${parameter:?word}    display word if parameter is null
line 520: " sh ksh bash : ${parameter:+word}    use word if parameter is not null, otherwise nothing
line 521: "    ksh bash : ${parameter#pattern}  remove small left  pattern
line 522: "    ksh bash : ${parameter##pattern} remove large left  pattern
line 523: "    ksh bash : ${parameter%pattern}  remove small right pattern
line 524: "    ksh bash : ${parameter%%pattern} remove large right pattern
line 525: "        bash : ${parameter^pattern}  Case modification
line 526: "        bash : ${parameter^^pattern} Case modification
line 527: "        bash : ${parameter,pattern}  Case modification
line 528: "        bash : ${parameter,,pattern} Case modification
line 529: "        bash : ${@:start:qty}        display command line arguments from start to start+qty-1 (inferred)
line 530: syn cluster shDerefPatternList^Icontains=shDerefPattern,shDerefString
line 531: if !exists("g:sh_no_error")
line 532:  syn match shDerefOpError^Icontained^I":[[:punct:]]"
line 533: endif
line 534: syn match  shDerefOp^Icontained^I":\=[-=?]"^Inextgroup=@shDerefPatternList
line 535: syn match  shDerefOp^Icontained^I":\=+"^Inextgroup=@shDerefPatternList
line 536: if exists("b:is_bash") || exists("b:is_kornshell") || exists("b:is_posix")
line 537:  syn match  shDerefOp^Icontained^I"#\{1,2}"^I^Inextgroup=@shDerefPatternList
line 538:  syn match  shDerefOp^Icontained^I"%\{1,2}"^I^Inextgroup=@shDerefPatternList
line 539:  syn match  shDerefPattern^Icontained^I"[^{}]\+"^I^Icontains=shDeref,shDerefSimple,shDerefPattern,shDerefString,shCommandSub,shDerefEscape nextgroup=shDerefPattern
line 540:  syn region shDerefPattern^Icontained^Istart="{" end="}"^Icontains=shDeref,shDerefSimple,shDerefString,shCommandSub nextgroup=shDerefPattern
line 541:  syn match  shDerefEscape^Icontained^I'\%(\\\\\)*\\.'
line 542: endif
line 543: if exists("b:is_bash")
line 544:  syn match  shDerefOp^Icontained^I"[,^]\{1,2}"^Inextgroup=@shDerefPatternList
line 545: endif
line 546: syn region shDerefString^Icontained^Imatchgroup=shDerefDelim start=+\%(\\\)\@<!'+ end=+'+^Icontains=shStringSpecial
line 547: syn region shDerefString^Icontained^Imatchgroup=shDerefDelim start=+\%(\\\)\@<!"+ skip=+\\"+ end=+"+^Icontains=@shDblQuoteList,shStringSpecial
line 548: syn match  shDerefString^Icontained^I"\\["']"^Inextgroup=shDerefPattern
line 549: 
line 550: if exists("b:is_bash") || exists("b:is_kornshell") || exists("b:is_posix")
line 551:  " bash ksh posix : ${parameter:offset}
line 552:  " bash ksh posix : ${parameter:offset:length}
line 553:  syn region shDerefOffset^Icontained^Istart=':[^-=?+]' end='\ze:'^Iend='\ze}'^Icontains=shDeref,shDerefSimple,shDerefEscape^Inextgroup=shDerefLen,shDeref,shDerefSimple
line 554:  syn region shDerefOffset^Icontained^Istart=':\s-'^Iend='\ze:'^Iend='\ze}'^Icontains=shDeref,shDerefSimple,shDerefEscape^Inextgroup=shDerefLen,shDeref,shDerefSimple
line 555:  syn match  shDerefLen^Icontained^I":[^}]\+"^Icontains=shDeref,shDerefSimple,shArithmetic
line 556: endif
line 557: 
line 558: if exists("b:is_bash")
line 559:  " bash : ${parameter//pattern/string}
line 560:  " bash : ${parameter//pattern}
line 561:  syn match  shDerefPPS^Icontained^I'/\{1,2}'^Inextgroup=shDerefPPSleft
line 562:  syn region shDerefPPSleft^Icontained^Istart='.'^Iskip=@\%(\\\\\)*\\/@ matchgroup=shDerefOp^Iend='/' end='\ze}' end='"'^Inextgroup=shDerefPPSright^Icontains=@shPPSLeftList
line 563:  syn region shDerefPPSright^Icontained^Istart='.'^Iskip=@\%(\\\\\)\+@^I^Iend='\ze}'^I^I^I^Icontains=@shPPSRightList
line 564: 
line 565:  " bash : ${parameter/#substring/replacement}
line 566:  syn match  shDerefPSR^Icontained^I'/#'^Inextgroup=shDerefPSRleft,shDoubleQuote,shSingleQuote
line 567:  syn region shDerefPSRleft^Icontained^Istart='[^"']'^Iskip=@\%(\\\\\)*\\/@ matchgroup=shDerefOp^Iend='/' end='\ze}'^Inextgroup=shDerefPSRright
line 568:  syn region shDerefPSRright^Icontained^Istart='.'^Iskip=@\%(\\\\\)\+@^I^Iend='\ze}'
line 569: endif
line 570: 
line 571: " Arithmetic Parenthesized Expressions: {{{1
line 572: "syn region shParen matchgroup=shArithRegion start='[^$]\zs(\%(\ze[^(]\|$\)' end=')' contains=@shArithParenList
line 573: syn region shParen matchgroup=shArithRegion start='\$\@!(\%(\ze[^(]\|$\)' end=')' contains=@shArithParenList
line 574: 
line 575: " Additional sh Keywords: {{{1
line 576: " ===================
line 577: syn keyword shStatement break cd chdir continue eval exec exit kill newgrp pwd read readonly return shift test trap ulimit umask wait
line 578: syn keyword shConditional contained elif else then
line 579: if !exists("g:sh_no_error")
line 580:  syn keyword shCondError elif else then
line 581: endif
line 582: 
line 583: " Additional ksh Keywords and Aliases: {{{1
line 584: " ===================================
line 585: if exists("b:is_kornshell") || exists("b:is_posix")
line 586:  syn keyword shStatement bg builtin disown enum export false fg getconf getopts hist jobs let printf sleep true unalias whence
line 587:  syn keyword shStatement typeset skipwhite nextgroup=shSetOption
line 588:  syn keyword shStatement autoload compound fc float functions hash history integer nameref nohup r redirect source stop suspend times type
line 589:  if exists("b:is_posix")
line 590:   syn keyword shStatement command
line 591:  else
line 592:   syn keyword shStatement time
line 593:  endif
line 594: 
line 595: " Additional bash Keywords: {{{1
line 596: " =====================
line 597: elseif exists("b:is_bash")
line 598:  syn keyword shStatement bg builtin disown export false fg getopts jobs let printf sleep true unalias
line 599:  syn keyword shStatement typeset nextgroup=shSetOption
line 600:  syn keyword shStatement fc hash history source suspend times type
line 601:  syn keyword shStatement bind builtin caller compopt declare dirs disown enable export help logout mapfile popd pushd readarray shopt source typeset
line 602: else
line 603:  syn keyword shStatement login newgrp
line 604: endif
line 605: 
line 606: " Synchronization: {{{1
line 607: " ================
line 608: if !exists("g:sh_minlines")
line 609:  let s:sh_minlines = 200
line 610: else
line 611:  let s:sh_minlines= g:sh_minlines
line 612: endif
line 613: if !exists("g:sh_maxlines")
line 614:  let s:sh_maxlines = 2*s:sh_minlines
line 615:  if s:sh_maxlines < 25
line 616:   let s:sh_maxlines= 25
line 617:  endif
line 618: else
line 619:  let s:sh_maxlines= g:sh_maxlines
line 620: endif
line 621: exec "syn sync minlines=" . s:sh_minlines . " maxlines=" . s:sh_maxlines
line 621: syn sync minlines=200 maxlines=400
line 622: syn sync match shCaseEsacSync^Igrouphere^IshCaseEsac^I"\<case\>"
line 623: syn sync match shCaseEsacSync^Igroupthere^IshCaseEsac^I"\<esac\>"
line 624: syn sync match shDoSync^Igrouphere^IshDo^I"\<do\>"
line 625: syn sync match shDoSync^Igroupthere^IshDo^I"\<done\>"
line 626: syn sync match shForSync^Igrouphere^IshFor^I"\<for\>"
line 627: syn sync match shForSync^Igroupthere^IshFor^I"\<in\>"
line 628: syn sync match shIfSync^Igrouphere^IshIf^I"\<if\>"
line 629: syn sync match shIfSync^Igroupthere^IshIf^I"\<fi\>"
line 630: syn sync match shUntilSync^Igrouphere^IshRepeat^I"\<until\>"
line 631: syn sync match shWhileSync^Igrouphere^IshRepeat^I"\<while\>"
line 632: 
line 633: " Default Highlighting: {{{1
line 634: " =====================
line 635: if !exists("skip_sh_syntax_inits")
line 636:  hi def link shArithRegion^IshShellVariables
line 637:  hi def link shAstQuote^IshDoubleQuote
line 638:  hi def link shAtExpr^IshSetList
line 639:  hi def link shBkslshSnglQuote^IshSingleQuote
line 640:  hi def link shBkslshDblQuote^IshDOubleQuote
line 641:  hi def link shBeginHere^IshRedir
line 642:  hi def link shCaseBar^IshConditional
line 643:  hi def link shCaseCommandSub^IshCommandSub
line 644:  hi def link shCaseDoubleQuote^IshDoubleQuote
line 645:  hi def link shCaseIn^IshConditional
line 646:  hi def link shQuote^IshOperator
line 647:  hi def link shCaseSingleQuote^IshSingleQuote
line 648:  hi def link shCaseStart^IshConditional
line 649:  hi def link shCmdSubRegion^IshShellVariables
line 650:  hi def link shColon^IshComment
line 651:  hi def link shDerefOp^IshOperator
line 652:  hi def link shDerefPOL^IshDerefOp
line 653:  hi def link shDerefPPS^IshDerefOp
line 654:  hi def link shDerefPSR^IshDerefOp
line 655:  hi def link shDeref^IshShellVariables
line 656:  hi def link shDerefDelim^IshOperator
line 657:  hi def link shDerefSimple^IshDeref
line 658:  hi def link shDerefSpecial^IshDeref
line 659:  hi def link shDerefString^IshDoubleQuote
line 660:  hi def link shDerefVar^IshDeref
line 661:  hi def link shDoubleQuote^IshString
line 662:  hi def link shEcho^IshString
line 663:  hi def link shEchoDelim^IshOperator
line 664:  hi def link shEchoQuote^IshString
line 665:  hi def link shForPP^IshLoop
line 666:  hi def link shFunction^IFunction
line 667:  hi def link shEmbeddedEcho^IshString
line 668:  hi def link shEscape^IshCommandSub
line 669:  hi def link shExDoubleQuote^IshDoubleQuote
line 670:  hi def link shExSingleQuote^IshSingleQuote
line 671:  hi def link shHereDoc^IshString
line 672:  hi def link shHereString^IshRedir
line 673:  hi def link shHerePayload^IshHereDoc
line 674:  hi def link shLoop^IshStatement
line 675:  hi def link shSpecialNxt^IshSpecial
line 676:  hi def link shNoQuote^IshDoubleQuote
line 677:  hi def link shOption^IshCommandSub
line 678:  hi def link shPattern^IshString
line 679:  hi def link shParen^IshArithmetic
line 680:  hi def link shPosnParm^IshShellVariables
line 681:  hi def link shQuickComment^IshComment
line 682:  hi def link shBQComment^IshComment
line 683:  hi def link shRange^IshOperator
line 684:  hi def link shRedir^IshOperator
line 685:  hi def link shSetListDelim^IshOperator
line 686:  hi def link shSetOption^IshOption
line 687:  hi def link shSingleQuote^IshString
line 688:  hi def link shSource^IshOperator
line 689:  hi def link shStringSpecial^IshSpecial
line 690:  hi def link shSpecialStart^IshSpecial
line 691:  hi def link shSubShRegion^IshOperator
line 692:  hi def link shTestOpr^IshConditional
line 693:  hi def link shTestPattern^IshString
line 694:  hi def link shTestDoubleQuote^IshString
line 695:  hi def link shTestSingleQuote^IshString
line 696:  hi def link shTouchCmd^IshStatement
line 697:  hi def link shVariable^IshSetList
line 698:  hi def link shWrapLineOperator^IshOperator
line 699: 
line 700:  if exists("b:is_bash")
line 701:    hi def link bashAdminStatement^IshStatement
line 702:    hi def link bashSpecialVariables^IshShellVariables
line 703:    hi def link bashStatement^I^IshStatement
line 704:    hi def link shCharClass^I^IshSpecial
line 705:    hi def link shDerefOffset^I^IshDerefOp
line 706:    hi def link shDerefLen^I^IshDerefOffset
line 707:  endif
line 708:  if exists("b:is_kornshell") || exists("b:is_posix")
line 709:    hi def link kshSpecialVariables^IshShellVariables
line 710:    hi def link kshStatement^I^IshStatement
line 711:  endif
line 712: 
line 713:  if !exists("g:sh_no_error")
line 714:   hi def link shCaseError^I^IError
line 715:   hi def link shCondError^I^IError
line 716:   hi def link shCurlyError^I^IError
line 717:   hi def link shDerefOpError^I^IError
line 718:   hi def link shDerefWordError^I^IError
line 719:   hi def link shDoError^I^IError
line 720:   hi def link shEsacError^I^IError
line 721:   hi def link shIfError^I^IError
line 722:   hi def link shInError^I^IError
line 723:   hi def link shParenError^I^IError
line 724:   hi def link shTestError^I^IError
line 725:   if exists("b:is_kornshell") || exists("b:is_posix")
line 726:     hi def link shDTestError^I^IError
line 727:   endif
line 728:  endif
line 729: 
line 730:  hi def link shArithmetic^I^ISpecial
line 731:  hi def link shCharClass^I^IIdentifier
line 732:  hi def link shSnglCase^I^IStatement
line 733:  hi def link shCommandSub^I^ISpecial
line 734:  hi def link shCommandSubBQ^I^IshCommandSub
line 735:  hi def link shComment^I^IComment
line 736:  hi def link shConditional^I^IConditional
line 737:  hi def link shCtrlSeq^I^ISpecial
line 738:  hi def link shExprRegion^I^IDelimiter
line 739:  hi def link shFunctionKey^I^IFunction
line 740:  hi def link shFunctionName^I^IFunction
line 741:  hi def link shNumber^I^INumber
line 742:  hi def link shOperator^I^IOperator
line 743:  hi def link shRepeat^I^IRepeat
line 744:  hi def link shSet^I^IStatement
line 745:  hi def link shSetList^I^IIdentifier
line 746:  hi def link shShellVariables^I^IPreProc
line 747:  hi def link shSpecial^I^ISpecial
line 748:  hi def link shSpecialDQ^I^ISpecial
line 749:  hi def link shSpecialSQ^I^ISpecial
line 750:  hi def link shSpecialNoZS^I^IshSpecial
line 751:  hi def link shStatement^I^IStatement
line 752:  hi def link shString^I^IString
line 753:  hi def link shTodo^I^ITodo
line 754:  hi def link shAlias^I^IIdentifier
line 755:  hi def link shHereDoc01^I^IshRedir
line 756:  hi def link shHereDoc02^I^IshRedir
line 757:  hi def link shHereDoc03^I^IshRedir
line 758:  hi def link shHereDoc04^I^IshRedir
line 759:  hi def link shHereDoc05^I^IshRedir
line 760:  hi def link shHereDoc06^I^IshRedir
line 761:  hi def link shHereDoc07^I^IshRedir
line 762:  hi def link shHereDoc08^I^IshRedir
line 763:  hi def link shHereDoc09^I^IshRedir
line 764:  hi def link shHereDoc10^I^IshRedir
line 765:  hi def link shHereDoc11^I^IshRedir
line 766:  hi def link shHereDoc12^I^IshRedir
line 767:  hi def link shHereDoc13^I^IshRedir
line 768:  hi def link shHereDoc14^I^IshRedir
line 769:  hi def link shHereDoc15^I^IshRedir
line 770:  hi def link shHereDoc16^I^IshRedir
line 771: endif
line 772: 
line 773: " Delete shell folding commands {{{1
line 774: " =============================
line 775: delc ShFoldFunctions
line 776: delc ShFoldHereDoc
line 777: delc ShFoldIfDoFor
line 778: 
line 779: " Set Current Syntax: {{{1
line 780: " ===================
line 781: if exists("b:is_bash")
line 782:  let b:current_syntax = "bash"
line 783: elseif exists("b:is_kornshell")
line 784:  let b:current_syntax = "ksh"
line 785: elseif exists("b:is_posix")
line 786:  let b:current_syntax = "posix"
line 787: else
line 788:  let b:current_syntax = "sh"
line 789: endif
line 790: 
line 791: " vim: ts=16 fdm=marker
finished sourcing /usr/local/share/nvim/runtime/syntax/sh.vim
continuing in function <SNR>64_SynSet
Searching for "/usr/local/share/nvim/runtime/syntax/sh/*.vim"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/syntax/sh.vim"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/syntax/sh/*.vim"
Searching for "/usr/local/lib64/nvim/syntax/sh.vim"
Searching for "/usr/local/lib64/nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/syntax/sh/*.vim"
line 26:         exe "runtime! syntax/" . name . ".lua syntax/" . name . "/*.lua"
line 26: runtime! syntax/sh.lua syntax/sh/*.lua
Searching for "syntax/sh.lua syntax/sh/*.lua" in runtime path
Searching for "/home/robbyk/.config/nvim/syntax/sh.lua"
Searching for "/home/robbyk/.config/nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/syntax/sh/*.lua"
Searching for "/usr/share/nvim/site/syntax/sh.lua"
Searching for "/usr/share/nvim/site/syntax/sh/*.lua"
Searching for "/usr/local/share/nvim/runtime/syntax/sh.lua"
Searching for "/usr/local/share/nvim/runtime/syntax/sh/*.lua"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/syntax/sh.lua"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/syntax/sh/*.lua"
Searching for "/usr/local/lib64/nvim/syntax/sh.lua"
Searching for "/usr/local/lib64/nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/syntax/sh/*.lua"
not found in runtime path: "syntax/sh.lua syntax/sh/*.lua"
line 27:       endif
line 28:     endfor
line 23:     for name in split(s, '\.')
line 24:       if !empty(name)
line 25:         exe "runtime! syntax/" . name . ".vim syntax/" . name . "/*.vim"
line 26:         exe "runtime! syntax/" . name . ".lua syntax/" . name . "/*.lua"
line 27:       endif
line 28:     endfor
line 29:   endif
function <SNR>64_SynSet returning #0

continuing in Syntax Autocommands for "*"

Executing Syntax Autocommands for "*"
autocommand call rainbow_main#load()

Executing: call rainbow_main#load()
calling function rainbow_main#load()

line 1: ^Ilet b:rainbow_confs = rainbow_main#gen_configs(&filetype)
calling function rainbow_main#load[1]..rainbow_main#gen_configs('sh')

line 1: ^Ireturn filter(map(split(a:ft, '\v\.'), 'rainbow_main#gen_config(v:val)'), 'type(v:val) == type({})')
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config('sh')

line 1: ^Ilet g = exists('g:rainbow_conf')? g:rainbow_conf : {}
line 2: ^I"echom 'g:rainbow_conf:' string(g)
line 3: ^Ilet s = get(g, 'separately', {})
line 4: ^I"echom 'g:rainbow_conf.separately:' string(s)
line 5: ^Ilet dft_conf = extend(copy(s:rainbow_conf), g) | unlet dft_conf.separately
line 5:  unlet dft_conf.separately
line 6: ^I"echom 'default config options:' string(dft_conf)
line 7: ^Ilet dx_conf = s:rainbow_conf.separately['*']
line 8: ^I"echom 'default star config:' string(dx_conf)
line 9: ^Ilet ds_conf = get(s:rainbow_conf.separately, a:ft, dx_conf)
line 10: ^I"echom 'default separately config:' string(ds_conf)
line 11: ^Ilet ux_conf = get(s, '*', ds_conf)
line 12: ^I"echom 'user star config:' string(ux_conf)
line 13: ^Ilet us_conf = get(s, a:ft, ux_conf)
line 14: ^I"echom 'user separately config:' string(us_conf)
line 15: ^Ilet af_conf = (s:eq(us_conf, 'default') ? ds_conf : us_conf)
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[15]..<SNR>157_eq(0, 'default')

line 1: ^Ireturn type(a:x) == type(a:y) && a:x == a:y
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[15]..<SNR>157_eq returning #0

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config

line 16: ^I"echom 'almost finally config:' string(af_conf)
line 17: ^Iif s:eq(af_conf, 0)
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[17]..<SNR>157_eq(0, 0)

line 1: ^Ireturn type(a:x) == type(a:y) && a:x == a:y
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[17]..<SNR>157_eq returning #1

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config

line 18: ^I^Ireturn 0
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config returning #0

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs

function rainbow_main#load[1]..rainbow_main#gen_configs returning []

continuing in function rainbow_main#load

line 2: ^Ifor conf in b:rainbow_confs
line 3: ^I^Icall rainbow#syn(conf)
line 4: ^I^Icall rainbow#hi(conf)
line 5: ^Iendfor
function rainbow_main#load returning #0

continuing in Syntax Autocommands for "*"

Executing FileType Autocommands for "*"
autocommand IndentBlanklineRefresh

Executing: IndentBlanklineRefresh
Executing: call s:try('lua require("indent_blankline.commands").refresh("" == "!")')
calling function <SNR>94_try('lua require("indent_blankline.commands").refresh("" == "!")')

line 1:     try
line 2:         execute a:cmd
line 2: lua require("indent_blankline.commands").refresh("" == "!")
Searching for "queries/sh/indents.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/sh/indents.scm"
Searching for "/usr/share/nvim/site/queries/sh/indents.scm"
Searching for "/usr/local/share/nvim/runtime/queries/sh/indents.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/sh/indents.scm"
Searching for "/usr/local/lib64/nvim/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/sh/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/sh/indents.scm"
not found in runtime path: "queries/sh/indents.scm"
Searching for "parser/bash.*" in runtime path
Searching for "/home/robbyk/.config/nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/parser/bash.*"
Searching for "parser/bash.*" in runtime path
Searching for "/home/robbyk/.config/nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/parser/bash.*"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/parser/bash.*"
Searching for "queries/bash/injections.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/bash/injections.scm"
Searching for "/usr/share/nvim/site/queries/bash/injections.scm"
Searching for "/usr/local/share/nvim/runtime/queries/bash/injections.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/bash/injections.scm"
Searching for "/usr/local/lib64/nvim/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/bash/injections.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/bash/injections.scm"
line 3:     catch /E12/
line 4:         return
line 5:     endtry
function <SNR>94_try returning #0

continuing in FileType Autocommands for "*"

Executing FileType Autocommands for "*"
autocommand if index(g:mkdp_filetypes, &filetype) !=# -1 | call s:init_command() | endif

Executing: if index(g:mkdp_filetypes, &filetype) !=# -1 | call s:init_command() | endif
Executing:  call s:init_command() | endif
Executing:  endif
Executing FileType Autocommands for "*"
autocommand lua require'nvim-treesitter.configs'.reattach_module('indent')

Executing: lua require'nvim-treesitter.configs'.reattach_module('indent')
Searching for "queries/bash/indents.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/bash/indents.scm"
Searching for "/usr/share/nvim/site/queries/bash/indents.scm"
Searching for "/usr/local/share/nvim/runtime/queries/bash/indents.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/bash/indents.scm"
Searching for "/usr/local/lib64/nvim/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/bash/indents.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/bash/indents.scm"
not found in runtime path: "queries/bash/indents.scm"
autocommand lua require'nvim-treesitter.configs'.reattach_module('highlight')

Executing: lua require'nvim-treesitter.configs'.reattach_module('highlight')
Searching for "queries/bash/highlights.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/bash/highlights.scm"
Searching for "/usr/share/nvim/site/queries/bash/highlights.scm"
Searching for "/usr/local/share/nvim/runtime/queries/bash/highlights.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/bash/highlights.scm"
Searching for "/usr/local/lib64/nvim/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/bash/highlights.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/bash/highlights.scm"
Executing Syntax Autocommands for "*"
autocommand call s:SynSet()

Executing: call s:SynSet()
calling function <SNR>64_SynSet()

line 1:   " clear syntax for :set syntax=OFF  and any syntax name that doesn't exist
line 2:   syn clear
line 3:   if exists("b:current_syntax")
line 4:     unlet b:current_syntax
line 5:   endif
line 6: 
line 7:   let s = expand("<amatch>")
line 8:   if s == "ON"
line 9:     " :set syntax=ON
line 10:     if &filetype == ""
line 11:       echohl ErrorMsg
line 12:       echo "filetype unknown"
line 13:       echohl None
line 14:     endif
line 15:     let s = &filetype
line 16:   elseif s == "OFF"
line 17:     let s = ""
line 18:   endif
line 19: 
line 20:   if s != ""
line 21:     " Load the syntax file(s).  When there are several, separated by dots,
line 22:     " load each in sequence.  Skip empty entries.
line 23:     for name in split(s, '\.')
line 24:       if !empty(name)
line 25:         exe "runtime! syntax/" . name . ".vim syntax/" . name . "/*.vim"
line 26:         exe "runtime! syntax/" . name . ".lua syntax/" . name . "/*.lua"
line 27:       endif
line 28:     endfor
line 29:   endif
function <SNR>64_SynSet returning #0

continuing in Syntax Autocommands for "*"

Executing Syntax Autocommands for "*"
autocommand call rainbow_main#load()

Executing: call rainbow_main#load()
calling function rainbow_main#load()

line 1: ^Ilet b:rainbow_confs = rainbow_main#gen_configs(&filetype)
calling function rainbow_main#load[1]..rainbow_main#gen_configs('sh')

line 1: ^Ireturn filter(map(split(a:ft, '\v\.'), 'rainbow_main#gen_config(v:val)'), 'type(v:val) == type({})')
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config('sh')

line 1: ^Ilet g = exists('g:rainbow_conf')? g:rainbow_conf : {}
line 2: ^I"echom 'g:rainbow_conf:' string(g)
line 3: ^Ilet s = get(g, 'separately', {})
line 4: ^I"echom 'g:rainbow_conf.separately:' string(s)
line 5: ^Ilet dft_conf = extend(copy(s:rainbow_conf), g) | unlet dft_conf.separately
line 5:  unlet dft_conf.separately
line 6: ^I"echom 'default config options:' string(dft_conf)
line 7: ^Ilet dx_conf = s:rainbow_conf.separately['*']
line 8: ^I"echom 'default star config:' string(dx_conf)
line 9: ^Ilet ds_conf = get(s:rainbow_conf.separately, a:ft, dx_conf)
line 10: ^I"echom 'default separately config:' string(ds_conf)
line 11: ^Ilet ux_conf = get(s, '*', ds_conf)
line 12: ^I"echom 'user star config:' string(ux_conf)
line 13: ^Ilet us_conf = get(s, a:ft, ux_conf)
line 14: ^I"echom 'user separately config:' string(us_conf)
line 15: ^Ilet af_conf = (s:eq(us_conf, 'default') ? ds_conf : us_conf)
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[15]..<SNR>157_eq(0, 'default')

line 1: ^Ireturn type(a:x) == type(a:y) && a:x == a:y
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[15]..<SNR>157_eq returning #0

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config

line 16: ^I"echom 'almost finally config:' string(af_conf)
line 17: ^Iif s:eq(af_conf, 0)
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[17]..<SNR>157_eq(0, 0)

line 1: ^Ireturn type(a:x) == type(a:y) && a:x == a:y
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[17]..<SNR>157_eq returning #1

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config

line 18: ^I^Ireturn 0
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config returning #0

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs

function rainbow_main#load[1]..rainbow_main#gen_configs returning []

continuing in function rainbow_main#load

line 2: ^Ifor conf in b:rainbow_confs
line 3: ^I^Icall rainbow#syn(conf)
line 4: ^I^Icall rainbow#hi(conf)
line 5: ^Iendfor
function rainbow_main#load returning #0

continuing in Syntax Autocommands for "*"

Executing Syntax Autocommands for "*"
autocommand call s:SynSet()

Executing: call s:SynSet()
calling function <SNR>64_SynSet()

line 1:   " clear syntax for :set syntax=OFF  and any syntax name that doesn't exist
line 2:   syn clear
line 3:   if exists("b:current_syntax")
line 4:     unlet b:current_syntax
line 5:   endif
line 6: 
line 7:   let s = expand("<amatch>")
line 8:   if s == "ON"
line 9:     " :set syntax=ON
line 10:     if &filetype == ""
line 11:       echohl ErrorMsg
line 12:       echo "filetype unknown"
line 13:       echohl None
line 14:     endif
line 15:     let s = &filetype
line 16:   elseif s == "OFF"
line 17:     let s = ""
line 18:   endif
line 19: 
line 20:   if s != ""
line 21:     " Load the syntax file(s).  When there are several, separated by dots,
line 22:     " load each in sequence.  Skip empty entries.
line 23:     for name in split(s, '\.')
line 24:       if !empty(name)
line 25:         exe "runtime! syntax/" . name . ".vim syntax/" . name . "/*.vim"
line 25: runtime! syntax/sh.vim syntax/sh/*.vim
Searching for "syntax/sh.vim syntax/sh/*.vim" in runtime path
Searching for "/home/robbyk/.config/nvim/syntax/sh.vim"
Searching for "/home/robbyk/.config/nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/syntax/sh/*.vim"
Searching for "/usr/share/nvim/site/syntax/sh.vim"
Searching for "/usr/share/nvim/site/syntax/sh/*.vim"
Searching for "/usr/local/share/nvim/runtime/syntax/sh.vim"
chdir(/home/robbyk/.dotfiles)
chdir(/usr/local/share/nvim/runtime/syntax)
chdir(/home/robbyk/.dotfiles)
line 25: sourcing "/usr/local/share/nvim/runtime/syntax/sh.vim"
line 1: " Vim syntax file
line 2: " Language:^I^Ishell (sh) Korn shell (ksh) bash (sh)
line 3: " Maintainer:^I^ICharles E. Campbell <NcampObell@SdrPchip.AorgM-NOSPAM>
line 4: " Previous Maintainer:^ILennart Schultz <Lennart.Schultz@ecmwf.int>
line 5: " Last Change:^I^IOct 26, 2021
line 6: " Version:^I^I199
line 7: " URL:^I^Ihttp://www.drchip.org/astronaut/vim/index.html#SYNTAX_SH
line 8: " For options and settings, please use:      :help ft-sh-syntax
line 9: " This file includes many ideas from Eric Brunet (eric.brunet@ens.fr) and heredoc fixes from Felipe Contreras
line 10: 
line 11: " quit when a syntax file was already loaded {{{1
line 12: if exists("b:current_syntax")
line 13:   finish
line 14: endif
line 15: 
line 16: " If the shell script itself specifies which shell to use, use it
line 17: if getline(1) =~ '\<ksh\>'
line 18:  let b:is_kornshell = 1
line 19: elseif getline(1) =~ '\<bash\>'
line 20:  let b:is_bash      = 1
line 21: elseif getline(1) =~ '\<dash\>'
line 22:  let b:is_dash      = 1
line 23: elseif !exists("g:is_kornshell") && !exists("g:is_bash") && !exists("g:is_posix") && !exists("g:is_sh") && !exists("g:is_dash")
line 24:  " user did not specify which shell to use, and 
line 25:  " the script itself does not specify which shell to use. FYI: /bin/sh is ambiguous.
line 26:  " Assuming /bin/sh is executable, and if its a link, find out what it links to.
line 27:  let s:shell = ""
line 28:  if executable("/bin/sh")
line 29:   let s:shell = resolve("/bin/sh")
line 30:  elseif executable("/usr/bin/sh")
line 31:   let s:shell = resolve("/usr/bin/sh")
line 32:  endif
line 33:  if     s:shell =~ '\<ksh\>'
line 34:   let b:is_kornshell= 1
line 35:  elseif s:shell =~ '\<bash\>'
line 36:   let b:is_bash = 1
line 37:  elseif s:shell =~ '\<dash\>'
line 38:   let b:is_dash = 1
line 39:  endif
line 40:  unlet s:shell
line 41: endif
line 42: 
line 43: " handling /bin/sh with is_kornshell/is_sh {{{1
line 44: " b:is_sh will be set when "#! /bin/sh" is found;
line 45: " However, it often is just a masquerade by bash (typically Linux)
line 46: " or kornshell (typically workstations with Posix "sh").
line 47: " So, when the user sets "g:is_bash", "g:is_kornshell",
line 48: " or "g:is_posix", a b:is_sh is converted into b:is_bash/b:is_kornshell,
line 49: " respectively.
line 50: if !exists("b:is_kornshell") && !exists("b:is_bash") && !exists("b:is_dash")
line 51:   if exists("g:is_posix") && !exists("g:is_kornshell")
line 52:    let g:is_kornshell= g:is_posix
line 53:   endif
line 54:   if exists("g:is_kornshell")
line 55:     let b:is_kornshell= 1
line 56:     if exists("b:is_sh")
line 57:       unlet b:is_sh
line 58:     endif
line 59:   elseif exists("g:is_bash")
line 60:     let b:is_bash= 1
line 61:     if exists("b:is_sh")
line 62:       unlet b:is_sh
line 63:     endif
line 64:   elseif exists("g:is_dash")
line 65:     let b:is_dash= 1
line 66:     if exists("b:is_sh")
line 67:       unlet b:is_sh
line 68:     endif
line 69:   else
line 70:     let b:is_sh= 1
line 71:   endif
line 72: endif
line 73: 
line 74: " if b:is_dash, set b:is_posix too
line 75: if exists("b:is_dash")
line 76:  let b:is_posix= 1
line 77: endif
line 78: 
line 79: " set up default g:sh_fold_enabled {{{1
line 80: " ================================
line 81: if !exists("g:sh_fold_enabled")
line 82:  let g:sh_fold_enabled= 0
line 83: elseif g:sh_fold_enabled != 0 && !has("folding")
line 84:  let g:sh_fold_enabled= 0
line 85:  echomsg "Ignoring g:sh_fold_enabled=".g:sh_fold_enabled."; need to re-compile vim for +fold support"
line 86: endif
line 87: if !exists("s:sh_fold_functions")
line 88:  let s:sh_fold_functions= and(g:sh_fold_enabled,1)
line 89: endif
line 90: if !exists("s:sh_fold_heredoc")
line 91:  let s:sh_fold_heredoc  = and(g:sh_fold_enabled,2)
line 92: endif
line 93: if !exists("s:sh_fold_ifdofor")
line 94:  let s:sh_fold_ifdofor  = and(g:sh_fold_enabled,4)
line 95: endif
line 96: if g:sh_fold_enabled && &fdm == "manual"
line 97:  " Given that^Ithe^Iuser provided g:sh_fold_enabled
line 98:  " ^IAND^Ig:sh_fold_enabled is manual (usual default)
line 99:  " ^Iimplies^Ia desire for syntax-based folding
line 100:  setl fdm=syntax
line 101: endif
line 102: 
line 103: " set up the syntax-highlighting for iskeyword
line 104: if (v:version == 704 && has("patch-7.4.1142")) || v:version > 704
line 105:  if !exists("g:sh_syntax_isk") || (exists("g:sh_syntax_isk") && g:sh_syntax_isk)
line 106:   if exists("b:is_bash")
line 107:    exe "syn iskeyword ".&iskeyword.",-,:"
line 107: syn iskeyword @,48-57,_,192-255,-,:
line 108:   else
line 109:    exe "syn iskeyword ".&iskeyword.",-"
line 110:   endif
line 111:  endif
line 112: endif
line 113: 
line 114: " Set up folding commands for shell {{{1
line 115: " =================================
line 116: if s:sh_fold_functions
line 117:  com! -nargs=* ShFoldFunctions <args> fold
line 118: else
line 119:  com! -nargs=* ShFoldFunctions <args>
line 120: endif
line 121: if s:sh_fold_heredoc
line 122:  com! -nargs=* ShFoldHereDoc <args> fold
line 123: else
line 124:  com! -nargs=* ShFoldHereDoc <args>
line 125: endif
line 126: if s:sh_fold_ifdofor
line 127:  com! -nargs=* ShFoldIfDoFor <args> fold
line 128: else
line 129:  com! -nargs=* ShFoldIfDoFor <args>
line 130: endif
line 131: 
line 132: " sh syntax is case sensitive {{{1
line 133: syn case match
line 134: 
line 135: " Clusters: contains=@... clusters {{{1
line 136: "==================================
line 137: syn cluster shErrorList^Icontains=shDoError,shIfError,shInError,shCaseError,shEsacError,shCurlyError,shParenError,shTestError,shOK
line 138: if exists("b:is_kornshell") || exists("b:is_bash")
line 139:  syn cluster ErrorList add=shDTestError
line 140: endif
line 141: syn cluster shArithParenList^Icontains=shArithmetic,shCaseEsac,shComment,shDeref,shDo,shDerefSimple,shEcho,shEscape,shNumber,shOperator,shPosnParm,shExSingleQuote,shExDoubleQuote,shHereString,shRedir,shSingleQuote,shDoubleQuote,shStatement,shVariable,shAlias,shTest,shCtrlSeq,shSpecial,shParen,bashSpecialVariables,bashStatement,shIf,shFor,shFunctionKey,shFunctionOne,shFunctionTwo
line 142: syn cluster shArithList^Icontains=@shArithParenList,shParenError
line 143: syn cluster shCaseEsacList^Icontains=shCaseStart,shCaseLabel,shCase,shCaseBar,shCaseIn,shComment,shDeref,shDerefSimple,shCaseCommandSub,shCaseExSingleQuote,shCaseSingleQuote,shCaseDoubleQuote,shCtrlSeq,@shErrorList,shStringSpecial,shCaseRange
line 144: syn cluster shCaseList^Icontains=@shCommandSubList,shCaseEsac,shColon,shCommandSub,shCommandSubBQ,shComment,shDo,shEcho,shExpr,shFor,shHereDoc,shIf,shHereString,shRedir,shSetList,shSource,shStatement,shVariable,shCtrlSeq
line 145: if exists("b:is_kornshell") || exists("b:is_bash")
line 146:  syn cluster shCaseList^Iadd=shForPP
line 147: endif
line 148: syn cluster shCommandSubList^Icontains=shAlias,shArithmetic,shCmdParenRegion,shCommandSub,shComment,shCtrlSeq,shDeref,shDerefSimple,shDoubleQuote,shEcho,shEscape,shExDoubleQuote,shExpr,shExSingleQuote,shHereDoc,shNumber,shOperator,shOption,shPosnParm,shHereString,shRedir,shSingleQuote,shSpecial,shStatement,shSubSh,shTest,shVariable
line 149: syn cluster shCurlyList^Icontains=shNumber,shComma,shDeref,shDerefSimple,shDerefSpecial
line 150: " COMBAK: removing shEscape from shDblQuoteList fails ksh04:43
line 151: syn cluster shDblQuoteList^Icontains=shArithmetic,shCommandSub,shCommandSubBQ,shDeref,shDerefSimple,shPosnParm,shCtrlSeq,shSpecial,shSpecialDQ
line 152: syn cluster shDerefList^Icontains=shDeref,shDerefSimple,shDerefVar,shDerefSpecial,shDerefWordError,shDerefPSR,shDerefPPS
line 153: syn cluster shDerefVarList^Icontains=shDerefOffset,shDerefOp,shDerefVarArray,shDerefOpError
line 154: syn cluster shEchoList^Icontains=shArithmetic,shCommandSub,shCommandSubBQ,shDeref,shDerefSimple,shEscape,shExSingleQuote,shExDoubleQuote,shSingleQuote,shDoubleQuote,shCtrlSeq,shEchoQuote
line 155: syn cluster shExprList1^Icontains=shCharClass,shNumber,shOperator,shExSingleQuote,shExDoubleQuote,shSingleQuote,shDoubleQuote,shExpr,shDblBrace,shDeref,shDerefSimple,shCtrlSeq
line 156: syn cluster shExprList2^Icontains=@shExprList1,@shCaseList,shTest
line 157: syn cluster shFunctionList^Icontains=@shCommandSubList,shCaseEsac,shColon,shComment,shDo,shEcho,shExpr,shFor,shHereDoc,shIf,shOption,shHereString,shRedir,shSetList,shSource,shStatement,shVariable,shOperator,shCtrlSeq
line 158: if exists("b:is_kornshell") || exists("b:is_bash")
line 159:  syn cluster shFunctionList^Iadd=shRepeat,shDblBrace,shDblParen,shForPP
line 160: endif
line 161: syn cluster shHereBeginList^Icontains=@shCommandSubList
line 162: syn cluster shHereList^Icontains=shBeginHere,shHerePayload
line 163: syn cluster shHereListDQ^Icontains=shBeginHere,@shDblQuoteList,shHerePayload
line 164: syn cluster shIdList^Icontains=shCommandSub,shCommandSubBQ,shWrapLineOperator,shSetOption,shComment,shDeref,shDerefSimple,shHereString,shNumber,shOperator,shRedir,shExSingleQuote,shExDoubleQuote,shSingleQuote,shDoubleQuote,shExpr,shCtrlSeq,shStringSpecial,shAtExpr
line 165: syn cluster shIfList^Icontains=@shLoopList,shDblBrace,shDblParen,shFunctionKey,shFunctionOne,shFunctionTwo
line 166: syn cluster shLoopList^Icontains=@shCaseList,@shErrorList,shCaseEsac,shConditional,shDblBrace,shExpr,shFor,shIf,shOption,shSet,shTest,shTestOpr,shTouch
line 167: if exists("b:is_kornshell") || exists("b:is_bash")
line 168:  syn cluster shLoopoList^Iadd=shForPP
line 169: endif
line 170: syn cluster shPPSLeftList^Icontains=shAlias,shArithmetic,shCmdParenRegion,shCommandSub,shCtrlSeq,shDeref,shDerefSimple,shDoubleQuote,shEcho,shEscape,shExDoubleQuote,shExpr,shExSingleQuote,shHereDoc,shNumber,shOperator,shOption,shPosnParm,shHereString,shRedir,shSingleQuote,shSpecial,shStatement,shSubSh,shTest,shVariable
line 171: syn cluster shPPSRightList^Icontains=shComment,shDeref,shDerefSimple,shEscape,shPosnParm
line 172: syn cluster shSubShList^Icontains=@shCommandSubList,shCommandSubBQ,shCaseEsac,shColon,shCommandSub,shComment,shDo,shEcho,shExpr,shFor,shIf,shHereString,shRedir,shSetList,shSource,shStatement,shVariable,shCtrlSeq,shOperator
line 173: syn cluster shTestList^Icontains=shArithmetic,shCharClass,shCommandSub,shCommandSubBQ,shCtrlSeq,shDeref,shDerefSimple,shDoubleQuote,shSpecialDQ,shExDoubleQuote,shExpr,shExSingleQuote,shNumber,shOperator,shSingleQuote,shTest,shTestOpr
line 174: syn cluster shNoZSList^Icontains=shSpecialNoZS
line 175: syn cluster shForList^Icontains=shTestOpr,shNumber,shDerefSimple,shDeref,shCommandSub,shCommandSubBQ,shArithmetic
line 176: 
line 177: " Echo: {{{1
line 178: " ====
line 179: " This one is needed INSIDE a CommandSub, so that `echo bla` be correct
line 180: syn region shEcho matchgroup=shStatement start="\<echo\>"  skip="\\$" matchgroup=shEchoDelim end="$" matchgroup=NONE end="[<>;&|()`]"me=e-1 end="\d[<>]"me=e-2 end="#"me=e-1 contains=@shEchoList skipwhite nextgroup=shQuickComment
line 181: syn region shEcho matchgroup=shStatement start="\<print\>" skip="\\$" matchgroup=shEchoDelim end="$" matchgroup=NONE end="[<>;&|()`]"me=e-1 end="\d[<>]"me=e-2 end="#"me=e-1 contains=@shEchoList skipwhite nextgroup=shQuickComment
line 182: syn match  shEchoQuote contained^I'\%(\\\\\)*\\["`'()]'
line 183: 
line 184: " This must be after the strings, so that ... \" will be correct
line 185: syn region shEmbeddedEcho contained matchgroup=shStatement start="\<print\>" skip="\\$" matchgroup=shEchoDelim end="$" matchgroup=NONE end="[<>;&|`)]"me=e-1 end="\d[<>]"me=e-2 end="\s#"me=e-2 contains=shNumber,shExSingleQuote,shSingleQuote,shDeref,shDerefSimple,shSpecialVar,shOperator,shExDoubleQuote,shDoubleQuote,shCharClass,shCtrlSeq
line 186: 
line 187: " Alias: {{{1
line 188: " =====
line 189: if exists("b:is_kornshell") || exists("b:is_bash") || exists("b:is_posix")
line 190:  syn match shStatement "\<alias\>"
line 191:  syn region shAlias matchgroup=shStatement start="\<alias\>\s\+\(\h[-._[:alnum:]]\+\)\@="  skip="\\$" end="\>\|`"
line 192:  syn region shAlias matchgroup=shStatement start="\<alias\>\s\+\(\h[-._[:alnum:]]\+=\)\@=" skip="\\$" end="="
line 193: 
line 194:  " Touch: {{{1
line 195:  " =====
line 196:  syn match shTouch^I'\<touch\>[^;#]*'^Iskipwhite nextgroup=shComment contains=shTouchCmd,shDoubleQuote,shSingleQuote,shDeref,shDerefSimple
line 197:  syn match shTouchCmd^I'\<touch\>'^I^Icontained
line 198: endif
line 199: 
line 200: " Error Codes: {{{1
line 201: " ============
line 202: if !exists("g:sh_no_error")
line 203:  syn match   shDoError "\<done\>"
line 204:  syn match   shIfError "\<fi\>"
line 205:  syn match   shInError "\<in\>"
line 206:  syn match   shCaseError ";;"
line 207:  syn match   shEsacError "\<esac\>"
line 208:  syn match   shCurlyError "}"
line 209:  syn match   shParenError ")"
line 210:  syn match   shOK^I'\.\(done\|fi\|in\|esac\)'
line 211:  if exists("b:is_kornshell") || exists("b:is_bash")
line 212:   syn match     shDTestError "]]"
line 213:  endif
line 214:  syn match     shTestError "]"
line 215: endif
line 216: 
line 217: " Options: {{{1
line 218: " ====================
line 219: syn match   shOption^I"\s\zs[-+][-_a-zA-Z#@]\+"
line 220: syn match   shOption^I"\s\zs--[^ \t$=`'"|);]\+"
line 221: 
line 222: " File Redirection Highlighted As Operators: {{{1
line 223: "===========================================
line 224: syn match      shRedir^I"\d\=>\(&[-0-9]\)\="
line 225: syn match      shRedir^I"\d\=>>-\="
line 226: syn match      shRedir^I"\d\=<\(&[-0-9]\)\="
line 227: syn match      shRedir^I"\d<<-\="
line 228: 
line 229: " Operators: {{{1
line 230: " ==========
line 231: syn match   shOperator^I"<<\|>>"^I^Icontained
line 232: syn match   shOperator^I"[!&;|]"^I^Icontained
line 233: syn match   shOperator^I"\[[[^:]\|\]]"^I^Icontained
line 234: syn match   shOperator^I"[-=/*+%]\=="^I^Iskipwhite nextgroup=shPattern
line 235: syn match   shPattern^I"\<\S\+\())\)\@="^Icontained contains=shExSingleQuote,shSingleQuote,shExDoubleQuote,shDoubleQuote,shDeref
line 236: 
line 237: " Subshells: {{{1
line 238: " ==========
line 239: syn region shExpr  transparent matchgroup=shExprRegion  start="{" end="}"^I^Icontains=@shExprList2 nextgroup=shSpecialNxt
line 240: syn region shSubSh transparent matchgroup=shSubShRegion start="[^(]\zs(" end=")"^Icontains=@shSubShList nextgroup=shSpecialNxt
line 241: 
line 242: " Tests: {{{1
line 243: "=======
line 244: syn region shExpr^Imatchgroup=shRange start="\[" skip=+\\\\\|\\$\|\[+ end="\]" contains=@shTestList,shSpecial
line 245: syn region shTest^Itransparent matchgroup=shStatement start="\<test\s" skip=+\\\\\|\\$+ matchgroup=NONE end="[;&|]"me=e-1 end="$" contains=@shExprList1
line 246: syn region shNoQuote^Istart='\S'^Iskip='\%(\\\\\)*\\.'^Iend='\ze\s' end="\ze['"]"^Icontained contains=shDerefSimple,shDeref
line 247: syn match  shAstQuote^Icontained^I'\*\ze"'^Inextgroup=shString
line 248: syn match  shTestOpr^Icontained^I'[^-+/%]\zs=' skipwhite nextgroup=shTestDoubleQuote,shTestSingleQuote,shTestPattern
line 249: syn match  shTestOpr^Icontained^I"<=\|>=\|!=\|==\|=\~\|-.\>\|-\(nt\|ot\|ef\|eq\|ne\|lt\|le\|gt\|ge\)\>\|[!<>]"
line 250: syn match  shTestPattern^Icontained^I'\w\+'
line 251: syn region shTestDoubleQuote^Icontained^Istart='\%(\%(\\\\\)*\\\)\@<!"' skip=+\\\\\|\\"+ end='"'^Icontains=shDeref,shDerefSimple,shDerefSpecial
line 252: syn match  shTestSingleQuote^Icontained^I'\\.'^Inextgroup=shTestSingleQuote
line 253: syn match  shTestSingleQuote^Icontained^I"'[^']*'"
line 254: if exists("b:is_kornshell") || exists("b:is_bash")
line 255:  syn region  shDblBrace matchgroup=Delimiter start="\[\["^Iskip=+\%(\\\\\)*\\$+ end="\]\]"^Icontains=@shTestList,shAstQuote,shNoQuote,shComment
line 256:  syn region  shDblParen matchgroup=Delimiter start="(("^Iskip=+\%(\\\\\)*\\$+ end="))"^Icontains=@shTestList,shComment
line 257: endif
line 258: 
line 259: " Character Class In Range: {{{1
line 260: " =========================
line 261: syn match   shCharClass^Icontained^I"\[:\(backspace\|escape\|return\|xdigit\|alnum\|alpha\|blank\|cntrl\|digit\|graph\|lower\|print\|punct\|space\|upper\|tab\):\]"
line 262: 
line 263: " Loops: do, if, while, until {{{1
line 264: " ======
line 265: ShFoldIfDoFor syn region shDo^Itransparent^Imatchgroup=shConditional start="\<do\>" matchgroup=shConditional end="\<done\>"^I^I^Icontains=@shLoopList
line 265: syn region shDo^Itransparent^Imatchgroup=shConditional start="\<do\>" matchgroup=shConditional end="\<done\>"^I^I^Icontains=@shLoopList
line 266: ShFoldIfDoFor syn region shIf^Itransparent^Imatchgroup=shConditional start="\<if\_s" matchgroup=shConditional skip=+-fi\>+ end="\<;\_s*then\>" end="\<fi\>"^Icontains=@shIfList
line 266: syn region shIf^Itransparent^Imatchgroup=shConditional start="\<if\_s" matchgroup=shConditional skip=+-fi\>+ end="\<;\_s*then\>" end="\<fi\>"^Icontains=@shIfList
line 267: ShFoldIfDoFor syn region shFor^I^Imatchgroup=shLoop start="\<for\ze\_s\s*\%(((\)\@!" end="\<in\>" end="\<do\>"me=e-2^I^I^Icontains=@shLoopList,shDblParen skipwhite nextgroup=shCurlyIn
line 267: syn region shFor^I^Imatchgroup=shLoop start="\<for\ze\_s\s*\%(((\)\@!" end="\<in\>" end="\<do\>"me=e-2^I^I^Icontains=@shLoopList,shDblParen skipwhite nextgroup=shCurlyIn
line 268: if exists("b:is_kornshell") || exists("b:is_bash")
line 269:  ShFoldIfDoFor syn region shForPP^Imatchgroup=shLoop start='\<for\>\_s*((' end='))' contains=@shForList
line 269: syn region shForPP^Imatchgroup=shLoop start='\<for\>\_s*((' end='))' contains=@shForList
line 270: endif
line 271: 
line 272: if exists("b:is_kornshell") || exists("b:is_bash") || exists("b:is_posix")
line 273:  syn cluster shCaseList^Iadd=shRepeat
line 274:  syn cluster shFunctionList^Iadd=shRepeat
line 275:  syn region shRepeat   matchgroup=shLoop   start="\<while\_s" end="\<do\>"me=e-2^Icontains=@shLoopList,shDblParen,shDblBrace
line 276:  syn region shRepeat   matchgroup=shLoop   start="\<until\_s" end="\<do\>"me=e-2^Icontains=@shLoopList,shDblParen,shDblBrace
line 277:  if !exists("b:is_posix")
line 278:   syn region shCaseEsac matchgroup=shConditional start="\<select\s" matchgroup=shConditional end="\<in\>" end="\<do\>" contains=@shLoopList
line 279:  endif
line 280: else
line 281:  syn region shRepeat   matchgroup=shLoop   start="\<while\_s" end="\<do\>"me=e-2^I^Icontains=@shLoopList
line 282:  syn region shRepeat   matchgroup=shLoop   start="\<until\_s" end="\<do\>"me=e-2^I^Icontains=@shLoopList
line 283: endif
line 284: syn region shCurlyIn   contained^Imatchgroup=Delimiter start="{" end="}" contains=@shCurlyList
line 285: syn match  shComma     contained^I","
line 286: 
line 287: " Case: case...esac {{{1
line 288: " ====
line 289: syn match shCaseBar^Icontained skipwhite "\(^\|[^\\]\)\(\\\\\)*\zs|"^I^Inextgroup=shCase,shCaseStart,shCaseBar,shComment,shCaseExSingleQuote,shCaseSingleQuote,shCaseDoubleQuote
line 290: syn match shCaseStart^Icontained skipwhite skipnl "("^I^I^Inextgroup=shCase,shCaseBar
line 291: syn match shCaseLabel^Icontained skipwhite^I"\%(\\.\|[-a-zA-Z0-9_*.]\)\+"^Icontains=shCharClass
line 292: if exists("b:is_bash")
line 293:  ShFoldIfDoFor syn region^IshCase^Icontained skipwhite skipnl matchgroup=shSnglCase start="\%(\\.\|[^#$()'" \t]\)\{-}\zs)"  end=";;" end=";&" end=";;&" end="esac"me=s-1^Icontains=@shCaseList^Inextgroup=shCaseStart,shCase,shComment
line 293: syn region^IshCase^Icontained skipwhite skipnl matchgroup=shSnglCase start="\%(\\.\|[^#$()'" \t]\)\{-}\zs)"  end=";;" end=";&" end=";;&" end="esac"me=s-1^Icontains=@shCaseList^Inextgroup=shCaseStart,shCase,shComment
line 294: else                                                                                                                     
line 295:  ShFoldIfDoFor syn region^IshCase^Icontained skipwhite skipnl matchgroup=shSnglCase start="\%(\\.\|[^#$()'" \t]\)\{-}\zs)"  end=";;" end="esac"me=s-1^I^Icontains=@shCaseList^Inextgroup=shCaseStart,shCase,shComment
line 296: endif
line 297: ShFoldIfDoFor syn region^IshCaseEsac^Imatchgroup=shConditional start="\<case\>" end="\<esac\>"^Icontains=@shCaseEsacList
line 297: syn region^IshCaseEsac^Imatchgroup=shConditional start="\<case\>" end="\<esac\>"^Icontains=@shCaseEsacList
line 298: 
line 299: syn keyword shCaseIn^Icontained skipwhite skipnl in^I^I^Inextgroup=shCase,shCaseStart,shCaseBar,shComment,shCaseExSingleQuote,shCaseSingleQuote,shCaseDoubleQuote
line 300: if exists("b:is_bash")
line 301:  syn region  shCaseExSingleQuote^Imatchgroup=shQuote start=+\$'+ skip=+\\\\\|\\.+ end=+'+^Icontains=shStringSpecial,shSpecial^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 302: elseif !exists("g:sh_no_error")
line 303:  syn region  shCaseExSingleQuote^Imatchgroup=Error start=+\$'+ skip=+\\\\\|\\.+ end=+'+^Icontains=shStringSpecial^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 304: endif
line 305: syn region  shCaseSingleQuote^Imatchgroup=shQuote start=+'+ end=+'+^I^Icontains=shStringSpecial^I^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 306: syn region  shCaseDoubleQuote^Imatchgroup=shQuote start=+"+ skip=+\\\\\|\\.+ end=+"+^Icontains=@shDblQuoteList,shStringSpecial^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 307: syn region  shCaseCommandSub^Istart=+`+ skip=+\\\\\|\\.+ end=+`+^I^Icontains=@shCommandSubList^I^Iskipwhite skipnl nextgroup=shCaseBar^Icontained
line 308: if exists("b:is_bash")
line 309:  syn region  shCaseRange^Imatchgroup=Delimiter start=+\[+ skip=+\\\\+ end=+\]+^Icontained^Icontains=shCharClass
line 310:  syn match   shCharClass^I'\[:\%(alnum\|alpha\|ascii\|blank\|cntrl\|digit\|graph\|lower\|print\|punct\|space\|upper\|word\|or\|xdigit\):\]'^I^I^Icontained
line 311: else
line 312:  syn region  shCaseRange^Imatchgroup=Delimiter start=+\[+ skip=+\\\\+ end=+\]+^Icontained
line 313: endif
line 314: " Misc: {{{1
line 315: "======
line 316: syn match   shWrapLineOperator "\\$"
line 317: syn region  shCommandSubBQ   ^Istart="`" skip="\\\\\|\\." end="`"^Icontains=shBQComment,@shCommandSubList
line 318: "COMBAK: see ksh13:50
line 319: "syn match   shEscape^Icontained^I'\%(^\)\@!\%(\\\\\)*\\.'^Inextgroup=shSingleQuote,shDoubleQuote,shComment
line 320: "COMBAK: see sh11:27
line 321: syn match   shEscape^Icontained^I'\%(^\)\@!\%(\\\\\)*\\.'^Inextgroup=shComment
line 322: "COMBAK: see ksh13:53
line 323: "syn match   shEscape^Icontained^I'\%(^\)\@!\%(\\\\\)*\\.'
line 324: 
line 325: " $() and $(()): {{{1
line 326: " $(..) is not supported by sh (Bourne shell).  However, apparently
line 327: " some systems (HP?) have as their /bin/sh a (link to) Korn shell
line 328: " (ie. Posix compliant shell).  /bin/ksh should work for those
line 329: " systems too, however, so the following syntax will flag $(..) as
line 330: " an Error under /bin/sh.  By consensus of vimdev'ers!
line 331: if exists("b:is_kornshell") || exists("b:is_bash") || exists("b:is_posix")
line 332:  syn region shCommandSub matchgroup=shCmdSubRegion start="\$("  skip='\\\\\|\\.' end=")"  contains=@shCommandSubList
line 333:  syn region shArithmetic matchgroup=shArithRegion  start="\$((" skip='\\\\\|\\.' end="))" contains=@shArithList
line 334:  syn region shArithmetic matchgroup=shArithRegion  start="\$\[" skip='\\\\\|\\.' end="\]" contains=@shArithList
line 335:  syn match  shSkipInitWS contained^I"^\s\+"
line 336: elseif !exists("g:sh_no_error")
line 337:  syn region shCommandSub matchgroup=Error start="\$(" end=")" contains=@shCommandSubList
line 338: endif
line 339: syn region shCmdParenRegion matchgroup=shCmdSubRegion start="(\ze[^(]" skip='\\\\\|\\.' end=")" contains=@shCommandSubList
line 340: 
line 341: if exists("b:is_bash")
line 342:  syn cluster shCommandSubList add=bashSpecialVariables,bashStatement
line 343:  syn cluster shCaseList add=bashAdminStatement,bashStatement
line 344:  syn keyword bashSpecialVariables contained auto_resume BASH BASH_ALIASES BASH_ALIASES BASH_ARGC BASH_ARGC BASH_ARGV BASH_ARGV BASH_CMDS BASH_CMDS BASH_COMMAND BASH_COMMAND BASH_ENV BASH_EXECUTION_STRING BASH_EXECUTION_STRING BASH_LINENO BASH_LINENO BASHOPTS BASHOPTS BASHPID BASHPID BASH_REMATCH BASH_REMATCH BASH_SOURCE BASH_SOURCE BASH_SUBSHELL BASH_SUBSHELL BASH_VERSINFO BASH_VERSION BASH_XTRACEFD BASH_XTRACEFD CDPATH COLUMNS COLUMNS COMP_CWORD COMP_CWORD COMP_KEY COMP_KEY COMP_LINE COMP_LINE COMP_POINT COMP_POINT COMPREPLY COMPREPLY COMP_TYPE COMP_TYPE COMP_WORDBREAKS COMP_WORDBREAKS COMP_WORDS COMP_WORDS COPROC COPROC DIRSTACK EMACS EMACS ENV ENV EUID FCEDIT FIGNORE FUNCNAME FUNCNAME FUNCNEST FUNCNEST GLOBIGNORE GROUPS histchars HISTCMD HISTCONTROL HISTFILE HISTFILESIZE HISTIGNORE HISTSIZE HISTTIMEFORMAT HISTTIMEFORMAT HOME HOSTFILE HOSTNAME HOSTTYPE IFS IGNOREEOF INPUTRC LANG LC_ALL LC_COLLATE LC_CTYPE LC_CTYPE LC_MESSAGES LC_NUMERIC LC_NUMERIC LINENO LINES LINES MACHTYPE MAIL MAILCHECK MAILPAT
line 345:  syn keyword bashStatement chmod clear complete du egrep expr fgrep find gnufind gnugrep grep less ls mkdir mv rm rmdir rpm sed sleep sort strip tail
line 346:  syn keyword bashAdminStatement daemon killall killproc nice reload restart start status stop
line 347:  syn keyword bashStatement^Icommand compgen
line 348: endif
line 349: 
line 350: if exists("b:is_kornshell") || exists("b:is_posix")
line 351:  syn cluster shCommandSubList add=kshSpecialVariables,kshStatement
line 352:  syn cluster shCaseList add=kshStatement
line 353:  syn keyword kshSpecialVariables contained CDPATH COLUMNS EDITOR ENV ERRNO FCEDIT FPATH HISTFILE HISTSIZE HOME IFS LINENO LINES MAIL MAILCHECK MAILPATH OLDPWD OPTARG OPTIND PATH PPID PS1 PS2 PS3 PS4 PWD RANDOM REPLY SECONDS SHELL TMOUT VISUAL
line 354:  syn keyword kshStatement cat chmod clear cp du egrep expr fgrep find grep killall less ls mkdir mv nice printenv rm rmdir sed sort strip stty tail tput
line 355:  syn keyword kshStatement command setgroups setsenv
line 356: endif
line 357: 
line 358: syn match   shSource^I"^\.\s"
line 359: syn match   shSource^I"\s\.\s"
line 360: "syn region  shColon^Istart="^\s*:" end="$" end="\s#"me=e-2 contains=@shColonList
line 361: "syn region  shColon^Istart="^\s*\zs:" end="$" end="\s#"me=e-2
line 362: if exists("b:is_kornshell") || exists("b:is_posix")
line 363:  syn match   shColon^I'^\s*\zs:'
line 364: endif
line 365: 
line 366: " String And Character Constants: {{{1
line 367: "================================
line 368: syn match   shNumber^I"\<\d\+\>#\="
line 369: syn match   shNumber^I"\<-\=\.\=\d\+\>#\="
line 370: syn match   shCtrlSeq^I"\\\d\d\d\|\\[abcfnrtv0]"^I^I^Icontained
line 371: if exists("b:is_bash")
line 372:  syn match   shSpecial^I"[^\\]\(\\\\\)*\zs\\\o\o\o\|\\x\x\x\|\\c[^"]\|\\[abefnrtv]"^Icontained
line 373:  syn match   shSpecial^I"^\(\\\\\)*\zs\\\o\o\o\|\\x\x\x\|\\c[^"]\|\\[abefnrtv]"^Icontained
line 374:  syn region  shExSingleQuote^Imatchgroup=shQuote start=+\$'+ skip=+\\\\\|\\.+ end=+'+^Icontains=shStringSpecial,shSpecial^I^Inextgroup=shSpecialNxt
line 375:  syn region  shExDoubleQuote^Imatchgroup=shQuote start=+\$"+ skip=+\\\\\|\\.\|\\"+ end=+"+^Icontains=@shDblQuoteList,shStringSpecial,shSpecial^Inextgroup=shSpecialNxt
line 376: elseif !exists("g:sh_no_error")
line 377:  syn region  shExSingleQuote^ImatchGroup=Error start=+\$'+ skip=+\\\\\|\\.+ end=+'+^Icontains=shStringSpecial
line 378:  syn region  shExDoubleQuote^ImatchGroup=Error start=+\$"+ skip=+\\\\\|\\.+ end=+"+^Icontains=shStringSpecial
line 379: endif
line 380: syn region  shSingleQuote^Imatchgroup=shQuote start=+'+ end=+'+^I^Icontains=@Spell^Inextgroup=shSpecialStart,shSpecialSQ
line 381: syn region  shDoubleQuote^Imatchgroup=shQuote start=+\%(\%(\\\\\)*\\\)\@<!"+ skip=+\\.+ end=+"+^I^I^Icontains=@shDblQuoteList,shStringSpecial,@Spell^Inextgroup=shSpecialStart
line 382: syn match   shStringSpecial^I"[^[:print:] \t]"^I^I^Icontained
line 383: syn match   shStringSpecial^I"[^\\]\zs\%(\\\\\)*\(\\[\\"'`$()#]\)\+"^I^I^Inextgroup=shComment
line 384: syn match   shSpecialSQ^I"[^\\]\zs\%(\\\\\)*\(\\[\\"'`$()#]\)\+"^I^Icontained^Inextgroup=shBkslshSnglQuote,@shNoZSList
line 385: syn match   shSpecialDQ^I"[^\\]\zs\%(\\\\\)*\(\\[\\"'`$()#]\)\+"^I^Icontained^Inextgroup=shBkslshDblQuote,@shNoZSList
line 386: syn match   shSpecialStart^I"\%(\\\\\)*\\[\\"'`$()#]"^I^I^Icontained^Inextgroup=shBkslshSnglQuote,shBkslshDblQuote,@shNoZSList
line 387: syn match   shSpecial^I"^\%(\\\\\)*\\[\\"'`$()#]"
line 388: syn match   shSpecialNoZS^Icontained^I"\%(\\\\\)*\\[\\"'`$()#]"
line 389: syn match   shSpecialNxt^Icontained^I"\\[\\"'`$()#]"
line 390: "syn region  shBkslshSnglQuote^Icontained^Imatchgroup=shQuote start=+'+ end=+'+^Icontains=@Spell^Inextgroup=shSpecialStart
line 391: "syn region  shBkslshDblQuote^Icontained^Imatchgroup=shQuote start=+"+ skip=+\\"+ end=+"+^Icontains=@shDblQuoteList,shStringSpecial,@Spell^Inextgroup=shSpecialStart
line 392: 
line 393: " Comments: {{{1
line 394: "==========
line 395: syn cluster^IshCommentGroup^Icontains=shTodo,@Spell
line 396: if exists("b:is_bash")
line 397:  syn match^IshTodo^Icontained^I^I"\<\%(COMBAK\|FIXME\|TODO\|XXX\)\ze:\=\>"
line 398: else
line 399:  syn keyword^IshTodo^Icontained^I^ICOMBAK FIXME TODO XXX
line 400: endif
line 401: syn match^IshComment^I^I"^\s*\zs#.*$"^Icontains=@shCommentGroup
line 402: syn match^IshComment^I^I"\s\zs#.*$"^Icontains=@shCommentGroup
line 403: syn match^IshComment^Icontained^I"#.*$"^Icontains=@shCommentGroup
line 404: syn match^IshQuickComment^Icontained^I"#.*$"          contains=@shCommentGroup
line 405: syn match^IshBQComment^Icontained^I"#.\{-}\ze`"^Icontains=@shCommentGroup
line 406: 
line 407: " Here Documents: {{{1
line 408: "  (modified by Felipe Contreras)
line 409: " =========================================
line 410: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc01 start="<<\s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc01 end="^\z1\s*$"^Icontains=@shDblQuoteList
line 410: syn region shHereDoc matchgroup=shHereDoc01 start="<<\s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc01 end="^\z1\s*$"^Icontains=@shDblQuoteList
line 411: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc02 start="<<-\s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc02 end="^\s*\z1\s*$"^Icontains=@shDblQuoteList
line 411: syn region shHereDoc matchgroup=shHereDoc02 start="<<-\s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc02 end="^\s*\z1\s*$"^Icontains=@shDblQuoteList
line 412: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc03 start="<<\s*\\\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc03 end="^\z1\s*$"
line 412: syn region shHereDoc matchgroup=shHereDoc03 start="<<\s*\\\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc03 end="^\z1\s*$"
line 413: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc04 start="<<-\s*\\\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc04 end="^\s*\z1\s*$"
line 413: syn region shHereDoc matchgroup=shHereDoc04 start="<<-\s*\\\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc04 end="^\s*\z1\s*$"
line 414: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc05 start="<<\s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc05 end="^\z1\s*$"
line 414: syn region shHereDoc matchgroup=shHereDoc05 start="<<\s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc05 end="^\z1\s*$"
line 415: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc06 start="<<-\s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc06 end="^\s*\z1\s*$"
line 415: syn region shHereDoc matchgroup=shHereDoc06 start="<<-\s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc06 end="^\s*\z1\s*$"
line 416: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc07 start="<<\s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc07 end="^\z1\s*$"
line 416: syn region shHereDoc matchgroup=shHereDoc07 start="<<\s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc07 end="^\z1\s*$"
line 417: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc08 start="<<-\s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc08 end="^\s*\z1\s*$"
line 417: syn region shHereDoc matchgroup=shHereDoc08 start="<<-\s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc08 end="^\s*\z1\s*$"
line 418: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc09 start="<<\s*\\\_$\_s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc09 end="^\z1\s*$"^Icontains=@shDblQuoteList
line 418: syn region shHereDoc matchgroup=shHereDoc09 start="<<\s*\\\_$\_s*\z([^ \t|>]\+\)"^I^Imatchgroup=shHereDoc09 end="^\z1\s*$"^Icontains=@shDblQuoteList
line 419: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc10 start="<<-\s*\\\_$\_s*\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc10 end="^\s*\z1\s*$"^Icontains=@shDblQuoteList
line 419: syn region shHereDoc matchgroup=shHereDoc10 start="<<-\s*\\\_$\_s*\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc10 end="^\s*\z1\s*$"^Icontains=@shDblQuoteList
line 420: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc11 start="<<\s*\\\_$\_s*\\\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc11 end="^\z1\s*$"
line 420: syn region shHereDoc matchgroup=shHereDoc11 start="<<\s*\\\_$\_s*\\\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc11 end="^\z1\s*$"
line 421: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc12 start="<<-\s*\\\_$\_s*\\\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc12 end="^\s*\z1\s*$"
line 421: syn region shHereDoc matchgroup=shHereDoc12 start="<<-\s*\\\_$\_s*\\\z([^ \t|>]\+\)"^Imatchgroup=shHereDoc12 end="^\s*\z1\s*$"
line 422: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc13 start="<<\s*\\\_$\_s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc13 end="^\z1\s*$"
line 422: syn region shHereDoc matchgroup=shHereDoc13 start="<<\s*\\\_$\_s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc13 end="^\z1\s*$"
line 423: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc14 start="<<-\s*\\\_$\_s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc14 end="^\s*\z1\s*$"
line 423: syn region shHereDoc matchgroup=shHereDoc14 start="<<-\s*\\\_$\_s*'\z([^']\+\)'"^I^Imatchgroup=shHereDoc14 end="^\s*\z1\s*$"
line 424: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc15 start="<<\s*\\\_$\_s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc15 end="^\z1\s*$"
line 424: syn region shHereDoc matchgroup=shHereDoc15 start="<<\s*\\\_$\_s*\"\z([^"]\+\)\""^I^Imatchgroup=shHereDoc15 end="^\z1\s*$"
line 425: ShFoldHereDoc syn region shHereDoc matchgroup=shHereDoc16 start="<<-\s*\\\_$\_s*\"\z([^"]\+\)\""^Imatchgroup=shHereDoc16 end="^\s*\z1\s*$"
line 425: syn region shHereDoc matchgroup=shHereDoc16 start="<<-\s*\\\_$\_s*\"\z([^"]\+\)\""^Imatchgroup=shHereDoc16 end="^\s*\z1\s*$"
line 426: 
line 427: 
line 428: " Here Strings: {{{1
line 429: " =============
line 430: " available for: bash; ksh (really should be ksh93 only) but not if its a posix
line 431: if exists("b:is_bash") || (exists("b:is_kornshell") && !exists("b:is_posix"))
line 432:  syn match shHereString "<<<"^Iskipwhite^Inextgroup=shCmdParenRegion
line 433: endif
line 434: 
line 435: " Identifiers: {{{1
line 436: "=============
line 437: syn match  shSetOption^I"\s\zs[-+][a-zA-Z0-9]\+\>"^Icontained
line 438: syn match  shVariable^I"\<\h\w*\ze="^I^I^Inextgroup=shVarAssign
line 439: syn match  shVarAssign^I"="^I^Icontained^Inextgroup=shCmdParenRegion,shPattern,shDeref,shDerefSimple,shDoubleQuote,shExDoubleQuote,shSingleQuote,shExSingleQuote,shVar
line 440: syn match  shVar^Icontained^I"\h\w*"
line 441: syn region shAtExpr^Icontained^Istart="@(" end=")" contains=@shIdList
line 442: if exists("b:is_bash")
line 443:  syn match  shSet "^\s*set\ze\s\+$"
line 444:  syn region shSetList oneline matchgroup=shSet start="\<\%(declare\|local\|export\)\>\ze[/a-zA-Z_]\@!" end="$"^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+#\|="^Icontains=@shIdList
line 445:  syn region shSetList oneline matchgroup=shSet start="\<\%(set\|unset\)\>[/a-zA-Z_]\@!" end="\ze[;|#)]\|$"^I^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+="^Icontains=@shIdList nextgroup=shComment
line 446: elseif exists("b:is_kornshell") || exists("b:is_posix")
line 447:  syn match  shSet "^\s*set\ze\s\+$"
line 448:  if exists("b:is_dash")
line 449:   syn region shSetList oneline matchgroup=shSet start="\<\%(local\)\>\ze[/]\@!" end="$"^I                 matchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+[#=]"^Icontains=@shIdList
line 450:  endif
line 451:  syn region shSetList oneline matchgroup=shSet start="\<\(export\)\>\ze[/]\@!" end="$"^I^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+[#=]"^Icontains=@shIdList
line 452:  syn region shSetList oneline matchgroup=shSet start="\<\%(set\|unset\>\)\ze[/a-zA-Z_]\@!" end="\ze[;|#)]\|$"^I^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+[#=]"^Icontains=@shIdList nextgroup=shComment
line 453: else
line 454:  syn region shSetList oneline matchgroup=shSet start="\<\(set\|export\|unset\)\>\ze[/a-zA-Z_]\@!" end="\ze[;|#)]\|$"^Imatchgroup=shSetListDelim end="\ze[}|);&]" matchgroup=NONE end="\ze\s\+[#=]"^Icontains=@shIdList
line 455: endif
line 456: 
line 457: " Functions: {{{1
line 458: if !exists("b:is_posix")
line 459:  syn keyword shFunctionKey function^Iskipwhite skipnl nextgroup=shFunctionTwo
line 460: endif
line 461: 
line 462: if exists("b:is_bash")
line 463:  ShFoldFunctions syn region shFunctionOne^Imatchgroup=shFunction start="^\s*[A-Za-z_0-9:][-a-zA-Z_0-9:]*\s*()\_s*{"^I^Iend="}"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 463: syn region shFunctionOne^Imatchgroup=shFunction start="^\s*[A-Za-z_0-9:][-a-zA-Z_0-9:]*\s*()\_s*{"^I^Iend="}"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 464:  ShFoldFunctions syn region shFunctionTwo^Imatchgroup=shFunction start="\%(do\)\@!\&\<[A-Za-z_0-9:][-a-zA-Z_0-9:]*\>\s*\%(()\)\=\_s*{"^Iend="}"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 464: syn region shFunctionTwo^Imatchgroup=shFunction start="\%(do\)\@!\&\<[A-Za-z_0-9:][-a-zA-Z_0-9:]*\>\s*\%(()\)\=\_s*{"^Iend="}"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 465:  ShFoldFunctions syn region shFunctionThree^Imatchgroup=shFunction start="^\s*[A-Za-z_0-9:][-a-zA-Z_0-9:]*\s*()\_s*("^I^Iend=")"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 465: syn region shFunctionThree^Imatchgroup=shFunction start="^\s*[A-Za-z_0-9:][-a-zA-Z_0-9:]*\s*()\_s*("^I^Iend=")"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 466:  ShFoldFunctions syn region shFunctionFour^Imatchgroup=shFunction start="\%(do\)\@!\&\<[A-Za-z_0-9:][-a-zA-Z_0-9:]*\>\s*\%(()\)\=\_s*)"^Iend=")"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 466: syn region shFunctionFour^Imatchgroup=shFunction start="\%(do\)\@!\&\<[A-Za-z_0-9:][-a-zA-Z_0-9:]*\>\s*\%(()\)\=\_s*)"^Iend=")"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 467: else
line 468:  ShFoldFunctions syn region shFunctionOne^Imatchgroup=shFunction start="^\s*\h\w*\s*()\_s*{"^I^I^Iend="}"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 469:  ShFoldFunctions syn region shFunctionTwo^Imatchgroup=shFunction start="\%(do\)\@!\&\<\h\w*\>\s*\%(()\)\=\_s*{"^I^Iend="}"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 470:  ShFoldFunctions syn region shFunctionThree^Imatchgroup=shFunction start="^\s*\h\w*\s*()\_s*("^I^I^Iend=")"^Icontains=@shFunctionList^I^I skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 471:  ShFoldFunctions syn region shFunctionFour^Imatchgroup=shFunction start="\%(do\)\@!\&\<\h\w*\>\s*\%(()\)\=\_s*("^I^Iend=")"^Icontains=shFunctionKey,@shFunctionList contained skipwhite skipnl nextgroup=shFunctionStart,shQuickComment
line 472: endif
line 473: 
line 474: " Parameter Dereferencing: {{{1
line 475: " ========================
line 476: if !exists("g:sh_no_error")
line 477:  syn match  shDerefWordError^I"[^}$[~]"^Icontained
line 478: endif
line 479: syn match  shDerefSimple^I"\$\%(\h\w*\|\d\)"^Inextgroup=@shNoZSList
line 480: syn region shDeref^Imatchgroup=PreProc start="\${" end="}"^Icontains=@shDerefList,shDerefVarArray nextgroup=shSpecialStart
line 481: syn match  shDerefSimple^I"\$[-#*@!?]"^Inextgroup=@shNoZSList
line 482: syn match  shDerefSimple^I"\$\$"^Inextgroup=@shNoZSList
line 483: syn match  shDerefSimple^I"\${\d}"^Inextgroup=@shNoZSList^Inextgroup=shSpecialStart
line 484: if exists("b:is_bash") || exists("b:is_kornshell") || exists("b:is_posix")
line 485:  syn region shDeref^Imatchgroup=PreProc start="\${##\=" end="}"^Icontains=@shDerefList^Inextgroup=@shSpecialNoZS,shSpecialStart
line 486:  syn region shDeref^Imatchgroup=PreProc start="\${\$\$" end="}"^Icontains=@shDerefList^Inextgroup=@shSpecialNoZS,shSpecialStart
line 487: endif
line 488: 
line 489: " ksh: ${!var[*]} array index list syntax: {{{1
line 490: " ========================================
line 491: if exists("b:is_kornshell") || exists("b:is_posix")
line 492:  syn region shDeref^Imatchgroup=PreProc start="\${!" end="}"^Icontains=@shDerefVarArray
line 493: endif
line 494: 
line 495: " bash: ${!prefix*} and ${#parameter}: {{{1
line 496: " ====================================
line 497: if exists("b:is_bash")
line 498:  syn region shDeref^Imatchgroup=PreProc start="\${!" end="\*\=}"^Icontains=@shDerefList,shDerefOffset
line 499:  syn match  shDerefVar^Icontained^I"{\@<=!\h\w*"^I^Inextgroup=@shDerefVarList
line 500: endif
line 501: if exists("b:is_kornshell")
line 502:  syn match  shDerefVar^Icontained^I"{\@<=!\h\w*[[:alnum:]_.]*"^Inextgroup=@shDerefVarList
line 503: endif
line 504: 
line 505: syn match  shDerefSpecial^Icontained^I"{\@<=[-*@?0]"^I^Inextgroup=shDerefOp,shDerefOffset,shDerefOpError
line 506: syn match  shDerefSpecial^Icontained^I"\({[#!]\)\@<=[[:alnum:]*@_]\+"^Inextgroup=@shDerefVarList,shDerefOp
line 507: syn match  shDerefVar^Icontained^I"{\@<=\h\w*"^I^Inextgroup=@shDerefVarList
line 508: syn match  shDerefVar^Icontained^I'\d'                            nextgroup=@shDerefVarList
line 509: if exists("b:is_kornshell") || exists("b:is_posix")
line 510:   syn match  shDerefVar^Icontained^I"{\@<=\h\w*[[:alnum:]_.]*"^Inextgroup=@shDerefVarList
line 511: endif
line 512: 
line 513: " sh ksh bash : ${var[... ]...}  array reference: {{{1
line 514: syn region  shDerefVarArray   contained^Imatchgroup=shDeref start="\[" end="]"^Icontains=@shCommandSubList nextgroup=shDerefOp,shDerefOpError
line 515: 
line 516: " Special ${parameter OPERATOR word} handling: {{{1
line 517: " sh ksh bash : ${parameter:-word}    word is default value
line 518: " sh ksh bash : ${parameter:=word}    assign word as default value
line 519: " sh ksh bash : ${parameter:?word}    display word if parameter is null
line 520: " sh ksh bash : ${parameter:+word}    use word if parameter is not null, otherwise nothing
line 521: "    ksh bash : ${parameter#pattern}  remove small left  pattern
line 522: "    ksh bash : ${parameter##pattern} remove large left  pattern
line 523: "    ksh bash : ${parameter%pattern}  remove small right pattern
line 524: "    ksh bash : ${parameter%%pattern} remove large right pattern
line 525: "        bash : ${parameter^pattern}  Case modification
line 526: "        bash : ${parameter^^pattern} Case modification
line 527: "        bash : ${parameter,pattern}  Case modification
line 528: "        bash : ${parameter,,pattern} Case modification
line 529: "        bash : ${@:start:qty}        display command line arguments from start to start+qty-1 (inferred)
line 530: syn cluster shDerefPatternList^Icontains=shDerefPattern,shDerefString
line 531: if !exists("g:sh_no_error")
line 532:  syn match shDerefOpError^Icontained^I":[[:punct:]]"
line 533: endif
line 534: syn match  shDerefOp^Icontained^I":\=[-=?]"^Inextgroup=@shDerefPatternList
line 535: syn match  shDerefOp^Icontained^I":\=+"^Inextgroup=@shDerefPatternList
line 536: if exists("b:is_bash") || exists("b:is_kornshell") || exists("b:is_posix")
line 537:  syn match  shDerefOp^Icontained^I"#\{1,2}"^I^Inextgroup=@shDerefPatternList
line 538:  syn match  shDerefOp^Icontained^I"%\{1,2}"^I^Inextgroup=@shDerefPatternList
line 539:  syn match  shDerefPattern^Icontained^I"[^{}]\+"^I^Icontains=shDeref,shDerefSimple,shDerefPattern,shDerefString,shCommandSub,shDerefEscape nextgroup=shDerefPattern
line 540:  syn region shDerefPattern^Icontained^Istart="{" end="}"^Icontains=shDeref,shDerefSimple,shDerefString,shCommandSub nextgroup=shDerefPattern
line 541:  syn match  shDerefEscape^Icontained^I'\%(\\\\\)*\\.'
line 542: endif
line 543: if exists("b:is_bash")
line 544:  syn match  shDerefOp^Icontained^I"[,^]\{1,2}"^Inextgroup=@shDerefPatternList
line 545: endif
line 546: syn region shDerefString^Icontained^Imatchgroup=shDerefDelim start=+\%(\\\)\@<!'+ end=+'+^Icontains=shStringSpecial
line 547: syn region shDerefString^Icontained^Imatchgroup=shDerefDelim start=+\%(\\\)\@<!"+ skip=+\\"+ end=+"+^Icontains=@shDblQuoteList,shStringSpecial
line 548: syn match  shDerefString^Icontained^I"\\["']"^Inextgroup=shDerefPattern
line 549: 
line 550: if exists("b:is_bash") || exists("b:is_kornshell") || exists("b:is_posix")
line 551:  " bash ksh posix : ${parameter:offset}
line 552:  " bash ksh posix : ${parameter:offset:length}
line 553:  syn region shDerefOffset^Icontained^Istart=':[^-=?+]' end='\ze:'^Iend='\ze}'^Icontains=shDeref,shDerefSimple,shDerefEscape^Inextgroup=shDerefLen,shDeref,shDerefSimple
line 554:  syn region shDerefOffset^Icontained^Istart=':\s-'^Iend='\ze:'^Iend='\ze}'^Icontains=shDeref,shDerefSimple,shDerefEscape^Inextgroup=shDerefLen,shDeref,shDerefSimple
line 555:  syn match  shDerefLen^Icontained^I":[^}]\+"^Icontains=shDeref,shDerefSimple,shArithmetic
line 556: endif
line 557: 
line 558: if exists("b:is_bash")
line 559:  " bash : ${parameter//pattern/string}
line 560:  " bash : ${parameter//pattern}
line 561:  syn match  shDerefPPS^Icontained^I'/\{1,2}'^Inextgroup=shDerefPPSleft
line 562:  syn region shDerefPPSleft^Icontained^Istart='.'^Iskip=@\%(\\\\\)*\\/@ matchgroup=shDerefOp^Iend='/' end='\ze}' end='"'^Inextgroup=shDerefPPSright^Icontains=@shPPSLeftList
line 563:  syn region shDerefPPSright^Icontained^Istart='.'^Iskip=@\%(\\\\\)\+@^I^Iend='\ze}'^I^I^I^Icontains=@shPPSRightList
line 564: 
line 565:  " bash : ${parameter/#substring/replacement}
line 566:  syn match  shDerefPSR^Icontained^I'/#'^Inextgroup=shDerefPSRleft,shDoubleQuote,shSingleQuote
line 567:  syn region shDerefPSRleft^Icontained^Istart='[^"']'^Iskip=@\%(\\\\\)*\\/@ matchgroup=shDerefOp^Iend='/' end='\ze}'^Inextgroup=shDerefPSRright
line 568:  syn region shDerefPSRright^Icontained^Istart='.'^Iskip=@\%(\\\\\)\+@^I^Iend='\ze}'
line 569: endif
line 570: 
line 571: " Arithmetic Parenthesized Expressions: {{{1
line 572: "syn region shParen matchgroup=shArithRegion start='[^$]\zs(\%(\ze[^(]\|$\)' end=')' contains=@shArithParenList
line 573: syn region shParen matchgroup=shArithRegion start='\$\@!(\%(\ze[^(]\|$\)' end=')' contains=@shArithParenList
line 574: 
line 575: " Additional sh Keywords: {{{1
line 576: " ===================
line 577: syn keyword shStatement break cd chdir continue eval exec exit kill newgrp pwd read readonly return shift test trap ulimit umask wait
line 578: syn keyword shConditional contained elif else then
line 579: if !exists("g:sh_no_error")
line 580:  syn keyword shCondError elif else then
line 581: endif
line 582: 
line 583: " Additional ksh Keywords and Aliases: {{{1
line 584: " ===================================
line 585: if exists("b:is_kornshell") || exists("b:is_posix")
line 586:  syn keyword shStatement bg builtin disown enum export false fg getconf getopts hist jobs let printf sleep true unalias whence
line 587:  syn keyword shStatement typeset skipwhite nextgroup=shSetOption
line 588:  syn keyword shStatement autoload compound fc float functions hash history integer nameref nohup r redirect source stop suspend times type
line 589:  if exists("b:is_posix")
line 590:   syn keyword shStatement command
line 591:  else
line 592:   syn keyword shStatement time
line 593:  endif
line 594: 
line 595: " Additional bash Keywords: {{{1
line 596: " =====================
line 597: elseif exists("b:is_bash")
line 598:  syn keyword shStatement bg builtin disown export false fg getopts jobs let printf sleep true unalias
line 599:  syn keyword shStatement typeset nextgroup=shSetOption
line 600:  syn keyword shStatement fc hash history source suspend times type
line 601:  syn keyword shStatement bind builtin caller compopt declare dirs disown enable export help logout mapfile popd pushd readarray shopt source typeset
line 602: else
line 603:  syn keyword shStatement login newgrp
line 604: endif
line 605: 
line 606: " Synchronization: {{{1
line 607: " ================
line 608: if !exists("g:sh_minlines")
line 609:  let s:sh_minlines = 200
line 610: else
line 611:  let s:sh_minlines= g:sh_minlines
line 612: endif
line 613: if !exists("g:sh_maxlines")
line 614:  let s:sh_maxlines = 2*s:sh_minlines
line 615:  if s:sh_maxlines < 25
line 616:   let s:sh_maxlines= 25
line 617:  endif
line 618: else
line 619:  let s:sh_maxlines= g:sh_maxlines
line 620: endif
line 621: exec "syn sync minlines=" . s:sh_minlines . " maxlines=" . s:sh_maxlines
line 621: syn sync minlines=200 maxlines=400
line 622: syn sync match shCaseEsacSync^Igrouphere^IshCaseEsac^I"\<case\>"
line 623: syn sync match shCaseEsacSync^Igroupthere^IshCaseEsac^I"\<esac\>"
line 624: syn sync match shDoSync^Igrouphere^IshDo^I"\<do\>"
line 625: syn sync match shDoSync^Igroupthere^IshDo^I"\<done\>"
line 626: syn sync match shForSync^Igrouphere^IshFor^I"\<for\>"
line 627: syn sync match shForSync^Igroupthere^IshFor^I"\<in\>"
line 628: syn sync match shIfSync^Igrouphere^IshIf^I"\<if\>"
line 629: syn sync match shIfSync^Igroupthere^IshIf^I"\<fi\>"
line 630: syn sync match shUntilSync^Igrouphere^IshRepeat^I"\<until\>"
line 631: syn sync match shWhileSync^Igrouphere^IshRepeat^I"\<while\>"
line 632: 
line 633: " Default Highlighting: {{{1
line 634: " =====================
line 635: if !exists("skip_sh_syntax_inits")
line 636:  hi def link shArithRegion^IshShellVariables
line 637:  hi def link shAstQuote^IshDoubleQuote
line 638:  hi def link shAtExpr^IshSetList
line 639:  hi def link shBkslshSnglQuote^IshSingleQuote
line 640:  hi def link shBkslshDblQuote^IshDOubleQuote
line 641:  hi def link shBeginHere^IshRedir
line 642:  hi def link shCaseBar^IshConditional
line 643:  hi def link shCaseCommandSub^IshCommandSub
line 644:  hi def link shCaseDoubleQuote^IshDoubleQuote
line 645:  hi def link shCaseIn^IshConditional
line 646:  hi def link shQuote^IshOperator
line 647:  hi def link shCaseSingleQuote^IshSingleQuote
line 648:  hi def link shCaseStart^IshConditional
line 649:  hi def link shCmdSubRegion^IshShellVariables
line 650:  hi def link shColon^IshComment
line 651:  hi def link shDerefOp^IshOperator
line 652:  hi def link shDerefPOL^IshDerefOp
line 653:  hi def link shDerefPPS^IshDerefOp
line 654:  hi def link shDerefPSR^IshDerefOp
line 655:  hi def link shDeref^IshShellVariables
line 656:  hi def link shDerefDelim^IshOperator
line 657:  hi def link shDerefSimple^IshDeref
line 658:  hi def link shDerefSpecial^IshDeref
line 659:  hi def link shDerefString^IshDoubleQuote
line 660:  hi def link shDerefVar^IshDeref
line 661:  hi def link shDoubleQuote^IshString
line 662:  hi def link shEcho^IshString
line 663:  hi def link shEchoDelim^IshOperator
line 664:  hi def link shEchoQuote^IshString
line 665:  hi def link shForPP^IshLoop
line 666:  hi def link shFunction^IFunction
line 667:  hi def link shEmbeddedEcho^IshString
line 668:  hi def link shEscape^IshCommandSub
line 669:  hi def link shExDoubleQuote^IshDoubleQuote
line 670:  hi def link shExSingleQuote^IshSingleQuote
line 671:  hi def link shHereDoc^IshString
line 672:  hi def link shHereString^IshRedir
line 673:  hi def link shHerePayload^IshHereDoc
line 674:  hi def link shLoop^IshStatement
line 675:  hi def link shSpecialNxt^IshSpecial
line 676:  hi def link shNoQuote^IshDoubleQuote
line 677:  hi def link shOption^IshCommandSub
line 678:  hi def link shPattern^IshString
line 679:  hi def link shParen^IshArithmetic
line 680:  hi def link shPosnParm^IshShellVariables
line 681:  hi def link shQuickComment^IshComment
line 682:  hi def link shBQComment^IshComment
line 683:  hi def link shRange^IshOperator
line 684:  hi def link shRedir^IshOperator
line 685:  hi def link shSetListDelim^IshOperator
line 686:  hi def link shSetOption^IshOption
line 687:  hi def link shSingleQuote^IshString
line 688:  hi def link shSource^IshOperator
line 689:  hi def link shStringSpecial^IshSpecial
line 690:  hi def link shSpecialStart^IshSpecial
line 691:  hi def link shSubShRegion^IshOperator
line 692:  hi def link shTestOpr^IshConditional
line 693:  hi def link shTestPattern^IshString
line 694:  hi def link shTestDoubleQuote^IshString
line 695:  hi def link shTestSingleQuote^IshString
line 696:  hi def link shTouchCmd^IshStatement
line 697:  hi def link shVariable^IshSetList
line 698:  hi def link shWrapLineOperator^IshOperator
line 699: 
line 700:  if exists("b:is_bash")
line 701:    hi def link bashAdminStatement^IshStatement
line 702:    hi def link bashSpecialVariables^IshShellVariables
line 703:    hi def link bashStatement^I^IshStatement
line 704:    hi def link shCharClass^I^IshSpecial
line 705:    hi def link shDerefOffset^I^IshDerefOp
line 706:    hi def link shDerefLen^I^IshDerefOffset
line 707:  endif
line 708:  if exists("b:is_kornshell") || exists("b:is_posix")
line 709:    hi def link kshSpecialVariables^IshShellVariables
line 710:    hi def link kshStatement^I^IshStatement
line 711:  endif
line 712: 
line 713:  if !exists("g:sh_no_error")
line 714:   hi def link shCaseError^I^IError
line 715:   hi def link shCondError^I^IError
line 716:   hi def link shCurlyError^I^IError
line 717:   hi def link shDerefOpError^I^IError
line 718:   hi def link shDerefWordError^I^IError
line 719:   hi def link shDoError^I^IError
line 720:   hi def link shEsacError^I^IError
line 721:   hi def link shIfError^I^IError
line 722:   hi def link shInError^I^IError
line 723:   hi def link shParenError^I^IError
line 724:   hi def link shTestError^I^IError
line 725:   if exists("b:is_kornshell") || exists("b:is_posix")
line 726:     hi def link shDTestError^I^IError
line 727:   endif
line 728:  endif
line 729: 
line 730:  hi def link shArithmetic^I^ISpecial
line 731:  hi def link shCharClass^I^IIdentifier
line 732:  hi def link shSnglCase^I^IStatement
line 733:  hi def link shCommandSub^I^ISpecial
line 734:  hi def link shCommandSubBQ^I^IshCommandSub
line 735:  hi def link shComment^I^IComment
line 736:  hi def link shConditional^I^IConditional
line 737:  hi def link shCtrlSeq^I^ISpecial
line 738:  hi def link shExprRegion^I^IDelimiter
line 739:  hi def link shFunctionKey^I^IFunction
line 740:  hi def link shFunctionName^I^IFunction
line 741:  hi def link shNumber^I^INumber
line 742:  hi def link shOperator^I^IOperator
line 743:  hi def link shRepeat^I^IRepeat
line 744:  hi def link shSet^I^IStatement
line 745:  hi def link shSetList^I^IIdentifier
line 746:  hi def link shShellVariables^I^IPreProc
line 747:  hi def link shSpecial^I^ISpecial
line 748:  hi def link shSpecialDQ^I^ISpecial
line 749:  hi def link shSpecialSQ^I^ISpecial
line 750:  hi def link shSpecialNoZS^I^IshSpecial
line 751:  hi def link shStatement^I^IStatement
line 752:  hi def link shString^I^IString
line 753:  hi def link shTodo^I^ITodo
line 754:  hi def link shAlias^I^IIdentifier
line 755:  hi def link shHereDoc01^I^IshRedir
line 756:  hi def link shHereDoc02^I^IshRedir
line 757:  hi def link shHereDoc03^I^IshRedir
line 758:  hi def link shHereDoc04^I^IshRedir
line 759:  hi def link shHereDoc05^I^IshRedir
line 760:  hi def link shHereDoc06^I^IshRedir
line 761:  hi def link shHereDoc07^I^IshRedir
line 762:  hi def link shHereDoc08^I^IshRedir
line 763:  hi def link shHereDoc09^I^IshRedir
line 764:  hi def link shHereDoc10^I^IshRedir
line 765:  hi def link shHereDoc11^I^IshRedir
line 766:  hi def link shHereDoc12^I^IshRedir
line 767:  hi def link shHereDoc13^I^IshRedir
line 768:  hi def link shHereDoc14^I^IshRedir
line 769:  hi def link shHereDoc15^I^IshRedir
line 770:  hi def link shHereDoc16^I^IshRedir
line 771: endif
line 772: 
line 773: " Delete shell folding commands {{{1
line 774: " =============================
line 775: delc ShFoldFunctions
line 776: delc ShFoldHereDoc
line 777: delc ShFoldIfDoFor
line 778: 
line 779: " Set Current Syntax: {{{1
line 780: " ===================
line 781: if exists("b:is_bash")
line 782:  let b:current_syntax = "bash"
line 783: elseif exists("b:is_kornshell")
line 784:  let b:current_syntax = "ksh"
line 785: elseif exists("b:is_posix")
line 786:  let b:current_syntax = "posix"
line 787: else
line 788:  let b:current_syntax = "sh"
line 789: endif
line 790: 
line 791: " vim: ts=16 fdm=marker
finished sourcing /usr/local/share/nvim/runtime/syntax/sh.vim
continuing in function <SNR>64_SynSet
Searching for "/usr/local/share/nvim/runtime/syntax/sh/*.vim"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/syntax/sh.vim"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/syntax/sh/*.vim"
Searching for "/usr/local/lib64/nvim/syntax/sh.vim"
Searching for "/usr/local/lib64/nvim/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/syntax/sh/*.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/syntax/sh.vim"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/syntax/sh/*.vim"
line 26:         exe "runtime! syntax/" . name . ".lua syntax/" . name . "/*.lua"
line 26: runtime! syntax/sh.lua syntax/sh/*.lua
Searching for "syntax/sh.lua syntax/sh/*.lua" in runtime path
Searching for "/home/robbyk/.config/nvim/syntax/sh.lua"
Searching for "/home/robbyk/.config/nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/syntax/sh/*.lua"
Searching for "/usr/share/nvim/site/syntax/sh.lua"
Searching for "/usr/share/nvim/site/syntax/sh/*.lua"
Searching for "/usr/local/share/nvim/runtime/syntax/sh.lua"
Searching for "/usr/local/share/nvim/runtime/syntax/sh/*.lua"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/syntax/sh.lua"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/syntax/sh/*.lua"
Searching for "/usr/local/lib64/nvim/syntax/sh.lua"
Searching for "/usr/local/lib64/nvim/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/syntax/sh/*.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/syntax/sh.lua"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/syntax/sh/*.lua"
not found in runtime path: "syntax/sh.lua syntax/sh/*.lua"
line 27:       endif
line 28:     endfor
line 23:     for name in split(s, '\.')
line 24:       if !empty(name)
line 25:         exe "runtime! syntax/" . name . ".vim syntax/" . name . "/*.vim"
line 26:         exe "runtime! syntax/" . name . ".lua syntax/" . name . "/*.lua"
line 27:       endif
line 28:     endfor
line 29:   endif
function <SNR>64_SynSet returning #0

continuing in Syntax Autocommands for "*"

Executing Syntax Autocommands for "*"
autocommand call rainbow_main#load()

Executing: call rainbow_main#load()
calling function rainbow_main#load()

line 1: ^Ilet b:rainbow_confs = rainbow_main#gen_configs(&filetype)
calling function rainbow_main#load[1]..rainbow_main#gen_configs('sh')

line 1: ^Ireturn filter(map(split(a:ft, '\v\.'), 'rainbow_main#gen_config(v:val)'), 'type(v:val) == type({})')
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config('sh')

line 1: ^Ilet g = exists('g:rainbow_conf')? g:rainbow_conf : {}
line 2: ^I"echom 'g:rainbow_conf:' string(g)
line 3: ^Ilet s = get(g, 'separately', {})
line 4: ^I"echom 'g:rainbow_conf.separately:' string(s)
line 5: ^Ilet dft_conf = extend(copy(s:rainbow_conf), g) | unlet dft_conf.separately
line 5:  unlet dft_conf.separately
line 6: ^I"echom 'default config options:' string(dft_conf)
line 7: ^Ilet dx_conf = s:rainbow_conf.separately['*']
line 8: ^I"echom 'default star config:' string(dx_conf)
line 9: ^Ilet ds_conf = get(s:rainbow_conf.separately, a:ft, dx_conf)
line 10: ^I"echom 'default separately config:' string(ds_conf)
line 11: ^Ilet ux_conf = get(s, '*', ds_conf)
line 12: ^I"echom 'user star config:' string(ux_conf)
line 13: ^Ilet us_conf = get(s, a:ft, ux_conf)
line 14: ^I"echom 'user separately config:' string(us_conf)
line 15: ^Ilet af_conf = (s:eq(us_conf, 'default') ? ds_conf : us_conf)
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[15]..<SNR>157_eq(0, 'default')

line 1: ^Ireturn type(a:x) == type(a:y) && a:x == a:y
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[15]..<SNR>157_eq returning #0

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config

line 16: ^I"echom 'almost finally config:' string(af_conf)
line 17: ^Iif s:eq(af_conf, 0)
calling function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[17]..<SNR>157_eq(0, 0)

line 1: ^Ireturn type(a:x) == type(a:y) && a:x == a:y
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config[17]..<SNR>157_eq returning #1

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config

line 18: ^I^Ireturn 0
function rainbow_main#load[1]..rainbow_main#gen_configs[1]..rainbow_main#gen_config returning #0

continuing in function rainbow_main#load[1]..rainbow_main#gen_configs

function rainbow_main#load[1]..rainbow_main#gen_configs returning []

continuing in function rainbow_main#load

line 2: ^Ifor conf in b:rainbow_confs
line 3: ^I^Icall rainbow#syn(conf)
line 4: ^I^Icall rainbow#hi(conf)
line 5: ^Iendfor
function rainbow_main#load returning #0

continuing in Syntax Autocommands for "*"

autocommand lua require'nvim-treesitter.configs'.reattach_module('nvimGPS')

Executing: lua require'nvim-treesitter.configs'.reattach_module('nvimGPS')
Searching for "queries/bash/nvimGPS.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/bash/nvimGPS.scm"
Searching for "/usr/share/nvim/site/queries/bash/nvimGPS.scm"
Searching for "/usr/local/share/nvim/runtime/queries/bash/nvimGPS.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/bash/nvimGPS.scm"
Searching for "/usr/local/lib64/nvim/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/bash/nvimGPS.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/bash/nvimGPS.scm"
autocommand lua require'nvim-treesitter.configs'.reattach_module('textobjects.lsp_interop')

Executing: lua require'nvim-treesitter.configs'.reattach_module('textobjects.lsp_interop')
Searching for "queries/bash/textobjects.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/bash/textobjects.scm"
Searching for "/usr/share/nvim/site/queries/bash/textobjects.scm"
Searching for "/usr/local/share/nvim/runtime/queries/bash/textobjects.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/bash/textobjects.scm"
Searching for "/usr/local/lib64/nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/bash/textobjects.scm"
Searching for "queries/bash/textobjects.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/bash/textobjects.scm"
Searching for "/usr/share/nvim/site/queries/bash/textobjects.scm"
Searching for "/usr/local/share/nvim/runtime/queries/bash/textobjects.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/bash/textobjects.scm"
Searching for "/usr/local/lib64/nvim/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/bash/textobjects.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/bash/textobjects.scm"
autocommand lua require'nvim-treesitter.configs'.reattach_module('textobjects.move')

Executing: lua require'nvim-treesitter.configs'.reattach_module('textobjects.move')
autocommand lua require'nvim-treesitter.configs'.reattach_module('textobjects.select')

Executing: lua require'nvim-treesitter.configs'.reattach_module('textobjects.select')
autocommand lua require'nvim-treesitter.configs'.reattach_module('rainbow')

Executing: lua require'nvim-treesitter.configs'.reattach_module('rainbow')
Searching for "queries/bash/parens.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/bash/parens.scm"
Searching for "/usr/share/nvim/site/queries/bash/parens.scm"
Searching for "/usr/local/share/nvim/runtime/queries/bash/parens.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/bash/parens.scm"
Searching for "/usr/local/lib64/nvim/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/bash/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/bash/parens.scm"
Searching for "queries/round/parens.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/round/parens.scm"
Searching for "/usr/share/nvim/site/queries/round/parens.scm"
Searching for "/usr/local/share/nvim/runtime/queries/round/parens.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/round/parens.scm"
Searching for "/usr/local/lib64/nvim/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/round/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/round/parens.scm"
Searching for "queries/curly/parens.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/curly/parens.scm"
Searching for "/usr/share/nvim/site/queries/curly/parens.scm"
Searching for "/usr/local/share/nvim/runtime/queries/curly/parens.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/curly/parens.scm"
Searching for "/usr/local/lib64/nvim/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/curly/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/curly/parens.scm"
Searching for "queries/square/parens.scm" in runtime path
Searching for "/home/robbyk/.config/nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/Comment.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/alpha-nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufferline.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bufonly.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-git/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/codicons.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/copilot.vim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/far.vim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fidget.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/fzy-lua-native/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitlinker.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/go.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/goto-preview/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/impatient.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/incsearch.vim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lf.vim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nui.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/null-ls.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment-frame/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-gps/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lastplace/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-maximize-window-toggle/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-notify/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/org-bullets.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/orgmode/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popfix/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/renamer.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/schemastore.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/sort.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/splitjoin.vim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/stabilize.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/substitute.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/targets.vim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-github.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-zoxide/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/todo-comments.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-js/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vista.vim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/wilder.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/yaml-revealer/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/lualine.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/tabout.nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/friendly-snippets/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neogen/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/neovim-session-manager/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-wordmotion/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/editorconfig-vim/queries/square/parens.scm"
Searching for "/usr/share/nvim/site/queries/square/parens.scm"
Searching for "/usr/local/share/nvim/runtime/queries/square/parens.scm"
Searching for "/usr/local/share/nvim/runtime/pack/dist/opt/matchit/queries/square/parens.scm"
Searching for "/usr/local/lib64/nvim/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-copilot/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-rg/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ/after/queries/square/parens.scm"
Searching for "/home/robbyk/.local/share/nvim/site/pack/packer/opt/vim-sandwich/after/queries/square/parens.scm"
function dist#ft#SetFileTypeSH[45]..dist#ft#SetFileTypeShell returning #0

continuing in function dist#ft#SetFileTypeSH

function dist#ft#SetFileTypeSH returning #0

continuing in BufNewFile Autocommands for "*.sh"

Executing BufNewFile Autocommands for "*"
autocommand if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat | runtime! scripts.vim | endif

Executing: if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat | runtime! scripts.vim | endif
Executing:  runtime! scripts.vim | endif
Executing:  endif
Executing BufNewFile Autocommands for "*"
autocommand if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat    && (getline(1) =~ '^#' || getline(2) =~ '^#' || getline(3) =~ '^#'^I|| getline(4) =~ '^#' || getline(5) =~ '^#') |   setf FALLBACK conf | endif

Executing: if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat    && (getline(1) =~ '^#' || getline(2) =~ '^#' || getline(3) =~ '^#'^I|| getline(4) =~ '^#' || getline(5) =~ '^#') |   setf FALLBACK conf | endif
Executing:    setf FALLBACK conf | endif
Executing:  endif
Executing BufNewFile Autocommands for "*"
autocommand let b:eunuch_new_file = 1

Executing: let b:eunuch_new_file = 1
Executing BufNewFile Autocommands for "*"
autocommand lua require("gitsigns.nvim.autocmds_compat")._exec("0x7fdeda71c5a8")

Executing: lua require("gitsigns.nvim.autocmds_compat")._exec("0x7fdeda71c5a8")
Executing BufEnter Autocommands for "*"
autocommand lua require('goto-preview').buffer_entered()

Executing: lua require('goto-preview').buffer_entered()
Executing BufEnter Autocommands for "*"
autocommand lua require("nvim-autopairs").on_attach()

Executing: lua require("nvim-autopairs").on_attach()
Executing BufEnter Autocommands for "*"
autocommand setlocal formatoptions-=c formatoptions-=r formatoptions-=o

Executing: setlocal formatoptions-=c formatoptions-=r formatoptions-=o
Executing BufEnter Autocommands for "*"
autocommand lua require('modules.whitespace').onBufEnter()

Executing: lua require('modules.whitespace').onBufEnter()
Executing BufEnter Autocommands for "*"
autocommand sil call s:LocalBrowse(expand("<amatch>"))

Executing: sil call s:LocalBrowse(expand("<amatch>"))
calling function <SNR>72_LocalBrowse('/home/robbyk/.dotfiles/test.sh')

line 1:   " Unfortunate interaction -- only DechoMsg debugging calls can be safely used here.
line 2:   " Otherwise, the BufEnter event gets triggered when attempts to write to
line 3:   " the DBG buffer are made.
line 4: 
line 5:   if !exists("s:vimentered")
line 6:    " If s:vimentered doesn't exist, then the VimEnter event hasn't fired.  It will,
line 7:    " and so s:VimEnter() will then be calling this routine, but this time with s:vimentered defined.
line 8: "   call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered doesn't exist)")
line 9: "   call Dret("s:LocalBrowse")
line 10:    return
line 11:   endif
line 12: 
line 13: "  call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered=".s:vimentered.")")
line 14: 
line 15:   if has("amiga")
line 16:    " The check against '' is made for the Amiga, where the empty
line 17:    " string is the current directory and not checking would break
line 18:    " things such as the help command.
line 19: "   call Decho("(LocalBrowse) dirname<".a:dirname.">  (isdirectory, amiga)")
line 20:    if a:dirname != '' && isdirectory(a:dirname)
line 21:     sil! call netrw#LocalBrowseCheck(a:dirname)
line 22:     if exists("w:netrw_bannercnt") && line('.') < w:netrw_bannercnt
line 23:      exe w:netrw_bannercnt
line 24:     endif
line 25:    endif
line 26: 
line 27:   elseif isdirectory(a:dirname)
line 28: "   call Decho("(LocalBrowse) dirname<".a:dirname."> ft=".&ft."  (isdirectory, not amiga)")
line 29: "   call Dredir("LocalBrowse ft last set: ","verbose set ft")
line 30:    " Jul 13, 2021: for whatever reason, preceding the following call with
line 31:    " a   sil!  causes an unbalanced if-endif vim error
line 32:    call netrw#LocalBrowseCheck(a:dirname)
line 33:    if exists("w:netrw_bannercnt") && line('.') < w:netrw_bannercnt
line 34:     exe w:netrw_bannercnt
line 35:    endif
line 36: 
line 37:   else
line 38:    " not a directory, ignore it
line 39: "   call Decho("(LocalBrowse) dirname<".a:dirname."> not a directory, ignoring...")
line 40:   endif
line 41: 
line 42: "  call Dret("s:LocalBrowse")
function <SNR>72_LocalBrowse returning #0

continuing in BufEnter Autocommands for "*"

Executing BufEnter Autocommands for "*"
autocommand if bufname("") == "" | inoremap <silent> <buffer> <cr> <C-]><C-R>=<SID>insert_new_bullet()<cr>| endif

Executing: if bufname("") == "" | inoremap <silent> <buffer> <cr> <C-]><C-R>=<SID>insert_new_bullet()<cr>| endif
Executing:  inoremap <silent> <buffer> <cr> <C-]><C-R>=<SID>insert_new_bullet()<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | inoremap <silent> <buffer> <C-cr> <cr>| endif

Executing: if bufname("") == "" | inoremap <silent> <buffer> <C-cr> <cr>| endif
Executing:  inoremap <silent> <buffer> <C-cr> <cr>| endif
Executing:  endif
autocommand if bufname("") == "" | nnoremap <silent> <buffer> o :call <SID>insert_new_bullet()<cr>| endif

Executing: if bufname("") == "" | nnoremap <silent> <buffer> o :call <SID>insert_new_bullet()<cr>| endif
Executing:  nnoremap <silent> <buffer> o :call <SID>insert_new_bullet()<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | vnoremap <silent> <buffer> gN :RenumberSelection<cr>| endif

Executing: if bufname("") == "" | vnoremap <silent> <buffer> gN :RenumberSelection<cr>| endif
Executing:  vnoremap <silent> <buffer> gN :RenumberSelection<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | nnoremap <silent> <buffer> gN :RenumberList<cr>| endif

Executing: if bufname("") == "" | nnoremap <silent> <buffer> gN :RenumberList<cr>| endif
Executing:  nnoremap <silent> <buffer> gN :RenumberList<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | nnoremap <silent> <buffer> <leader>x :ToggleCheckbox<cr>| endif

Executing: if bufname("") == "" | nnoremap <silent> <buffer> <leader>x :ToggleCheckbox<cr>| endif
Executing:  nnoremap <silent> <buffer> <leader>x :ToggleCheckbox<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | inoremap <silent> <buffer> <C-t> <C-o>:BulletDemote<cr>| endif

Executing: if bufname("") == "" | inoremap <silent> <buffer> <C-t> <C-o>:BulletDemote<cr>| endif
Executing:  inoremap <silent> <buffer> <C-t> <C-o>:BulletDemote<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | nnoremap <silent> <buffer> >> :BulletDemote<cr>| endif

Executing: if bufname("") == "" | nnoremap <silent> <buffer> >> :BulletDemote<cr>| endif
Executing:  nnoremap <silent> <buffer> >> :BulletDemote<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | inoremap <silent> <buffer> <C-d> <C-o>:BulletPromote<cr>| endif

Executing: if bufname("") == "" | inoremap <silent> <buffer> <C-d> <C-o>:BulletPromote<cr>| endif
Executing:  inoremap <silent> <buffer> <C-d> <C-o>:BulletPromote<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | nnoremap <silent> <buffer> << :BulletPromote<cr>| endif

Executing: if bufname("") == "" | nnoremap <silent> <buffer> << :BulletPromote<cr>| endif
Executing:  nnoremap <silent> <buffer> << :BulletPromote<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | vnoremap <silent> <buffer> > :BulletDemoteVisual<cr>| endif

Executing: if bufname("") == "" | vnoremap <silent> <buffer> > :BulletDemoteVisual<cr>| endif
Executing:  vnoremap <silent> <buffer> > :BulletDemoteVisual<cr>| endif
Executing:  endif
autocommand if bufname("") == "" | vnoremap <silent> <buffer> < :BulletPromoteVisual<cr>| endif

Executing: if bufname("") == "" | vnoremap <silent> <buffer> < :BulletPromoteVisual<cr>| endif
Executing:  vnoremap <silent> <buffer> < :BulletPromoteVisual<cr>| endif
Executing:  endif
Executing BufEnter Autocommands for "*"
autocommand if mode() =~# '^[iR]'|call s:Event('InsertEnter')|endif

Executing: if mode() =~# '^[iR]'|call s:Event('InsertEnter')|endif
Executing: call s:Event('InsertEnter')|endif
Executing: endif
Executing BufEnter Autocommands for "*"
autocommand lua require('gitblame').handle_buf_enter()

Executing: lua require('gitblame').handle_buf_enter()
Executing BufEnter Autocommands for "*"
autocommand if index(g:mkdp_filetypes, &filetype) !=# -1 | call s:init_command() | endif

Executing: if index(g:mkdp_filetypes, &filetype) !=# -1 | call s:init_command() | endif
Executing:  call s:init_command() | endif
Executing:  endif
Executing BufEnter Autocommands for "*"
autocommand lua require'lualine.components.branch.git_branch'.find_git_dir()

Executing: lua require'lualine.components.branch.git_branch'.find_git_dir()
autocommand lua require'lualine.components.diff.git_diff'.update_diff_args()

Executing: lua require'lualine.components.diff.git_diff'.update_diff_args()
Executing BufWinEnter Autocommands for "*"
autocommand lua require('stabilize').save_window()

Executing: lua require('stabilize').save_window()
Executing BufWinEnter Autocommands for "*"
autocommand lua require("nvim-autopairs").on_attach()

Executing: lua require("nvim-autopairs").on_attach()
Executing BufWinEnter Autocommands for "*"
autocommand IndentBlanklineRefresh

Executing: IndentBlanklineRefresh
Executing: call s:try('lua require("indent_blankline.commands").refresh("" == "!")')
calling function <SNR>94_try('lua require("indent_blankline.commands").refresh("" == "!")')

line 1:     try
line 2:         execute a:cmd
line 2: lua require("indent_blankline.commands").refresh("" == "!")
line 3:     catch /E12/
line 4:         return
line 5:     endtry
function <SNR>94_try returning #0

continuing in BufWinEnter Autocommands for "*"

Executing BufWinEnter Autocommands for "*"
autocommand lua require("todo-comments.highlight").attach()

Executing: lua require("todo-comments.highlight").attach()
Executing: unlet! b:keymap_name