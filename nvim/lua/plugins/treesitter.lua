-- vim.opt.foldmethod = "expr"
-- -- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- -- require("orgmode").setup_ts_grammar()
--
require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "bash",
        "dockerfile",
        "typescript",
        "go",
        "hocon",
        "html",
        "javascript",
        "json5",
        "lua",
        "scala",
        "python",
        "http",
        "json",
        "yaml",
        "lua",
    },
    matchup = {
        enable = false, -- mandatory, false will disable the whole extension
    },
    highlight = {
        enable = true,
        -- disable = { 'org' },
        additional_vim_regex_highlighting = true,
    },
    autopairs = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = { "yaml", "yml", "python", "org" },
    },
    sync_install = false,
    ignore_install = {},
    textsubjects = {
        enable = true,
        prev_selection = ",", -- (Optional) keymap to select the previous selection
        keymaps = {
            ["."] = "textsubjects-smart",
            [";"] = "textsubjects-container-outer",
            ["i;"] = "textsubjects-container-inner",
        },
    },
    textobjects = {
        lookahead = true,
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
            },
        },
        lsp_interop = {
            enable = true,
            border = "none",
            peek_definition_code = {
                ["<leader>df"] = "@function.outer",
                ["<leader>dF"] = "@class.outer",
            },
        },
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
        },
    },
    -- rainbow = {
    --     enable = true,
    --     extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    --     max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- },
})
