require("nvim-treesitter.configs").setup({
    matchup = { enable = true },
    ensure_installed = "maintained",
    ignore_install = {}, -- List of parsers to ignore installing
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
    },
    autotag = {
        enable = true,
        filetypes = {
            "scala",
            "python",
            "html",
            "javascript",
            "typescript",
            "markdown",
        },
    },
})
