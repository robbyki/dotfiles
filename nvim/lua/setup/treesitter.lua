require("nvim-treesitter.configs").setup {
    matchup = { enable = true },
    ensure_installed = "maintained",
    -- ensure_installed = {
    --     "lua",
    --     "rust",
    --     "go",
    --     "python",
    --     "bash",
    --     "comment",
    --     "dockerfile",
    --     "javascript",
    --     "json",
    --     "markdown",
    --     "scala",
    --     "yaml",
    -- },
    -- ignore_install = { "markdown" }, -- List of parsers to ignore installing
    ----------------------------------------------------------------------
    --            This obliterates my markdown file loading             --
    ----------------------------------------------------------------------
    -- highlight = {
    --     enable = true,
    --     -- additional_vim_regex_highlighting = true,
    -- },
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
}
