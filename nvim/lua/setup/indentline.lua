vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup({
    show_end_of_line = true,
    use_treesitter = true,
    show_first_indent_level = false,
    char = "│",
    show_current_context = true,
    filetype_exclude = {
        "",
        "dbui",
        "NvimTree",
        "lspinfo",
        "Mundo",
        "MundoDiff",
        "packer",
        "fugitive",
        "fugitiveblame",
        "NeogitStatus",
        "DiffViewFiles",
    },
})
