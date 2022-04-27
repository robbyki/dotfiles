require("indent_blankline").setup({
  use_treesitter = true,
  show_current_context = true,
  show_first_indent_level = false,
  filetype_exclude = {
    "help",
    "startify",
    "far",
    "gitcommit",
    "terminal",
    "floaterm",
    "NvimTree",
    "neo-tree",
    "dashboard",
    "alpha",
    "toggleterm",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "lsp-installer",
  },
  enabled = true,
  show_trailing_blankline_indent = false,
  char = "│",
  space_char_highlight_list = {},
  context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  },
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
})

vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = false

vim.opt.termguicolors = true
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])

vim.opt.list = true
vim.opt.listchars:append("space:.")
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:-->")
vim.opt.listchars:append("trail:~")
vim.opt.listchars:append("extends:>")
vim.opt.listchars:append("precedes:<")
