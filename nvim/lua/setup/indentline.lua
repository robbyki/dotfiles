require("indent_blankline").setup {
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
}
