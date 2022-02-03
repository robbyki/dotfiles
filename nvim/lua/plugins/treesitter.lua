-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

require("nvim-treesitter.configs").setup({
    -- matchup = { enable = true },
    ensure_installed = "maintained",
    sync_install = true,
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = false,
        disable = { "yaml", "yml" },
    },
    -- autopairs = {
    --     enable = true,
    -- },
    -- something funky is happening with kanawaga color scheme when I enable something in here.
    -- refactor = {
    --     highlight_current_scope = {
    --         enable = false,
    --     },
    --     highlight_definition = {
    --         enable = true,
    --     },
    --     smart_rename = {
    --         enable = true,
    --         keymaps = {
    --             smart_rename = "grr",
    --         },
    --     },
    --     navigation = {
    --         enable = false,
    --         keymaps = {
    --             goto_definition = "gnd",
    --             list_definition = "gnD",
    --             list_definition_toc = "gO",
    --             goto_next_usage = "<a-*>",
    --             goto_previos_usgae = "<a-#>",
    --         },
    --     },
    -- },
    -- textobjects = {
    --     select = {
    --         enable = true,
    --
    --         -- Automatically jump forward to textobj, similar to targets.vim
    --         lookahead = true,
    --
    --         keymaps = {
    --             -- You can use the capture groups defined in textobjects.scm
    --             ["af"] = "@function.outer",
    --             ["if"] = "@function.inner",
    --             ["ac"] = "@class.outer",
    --             ["ic"] = "@class.inner",
    --             ["ab"] = "@block.outer",
    --             ["ib"] = "@block.inner",
    --             ["al"] = "@call.outer",
    --             ["il"] = "@call.inner",
    --         },
    --     },
    --     move = {
    --         enable = true,
    --         set_jumps = true, -- whether to set jumps in the jumplist
    --         goto_next_start = {
    --             ["]]"] = "@function.outer",
    --             ["]m"] = "@class.outer",
    --         },
    --         goto_next_end = {
    --             ["]["] = "@function.outer",
    --             ["]M"] = "@class.outer",
    --         },
    --         goto_previous_start = {
    --             ["[["] = "@function.outer",
    --             ["[m"] = "@class.outer",
    --         },
    --         goto_previous_end = {
    --             ["[]"] = "@function.outer",
    --             ["[M"] = "@class.outer",
    --         },
    --     },
    --     swap = {
    --         enable = true,
    --         swap_next = { ["<leader>a"] = "@parameter.inner" },
    --         swap_previous = { ["<leader>A"] = "@parameter.inner" },
    --     },
    --     lsp_interop = {
    --         enable = true,
    --         border = "none",
    --         peek_definition_code = {
    --             ["<leader>df"] = "@function.outer",
    --             ["<leader>dF"] = "@class.outer",
    --         },
    --     },
    -- },
    -- textsubjects = {
    --     enable = true,
    --     keymaps = {
    --         ["."] = "textsubjects-smart",
    --         [";"] = "textsubjects-container-outer",
    --     },
    -- },
    -- rainbow = {
    --     enable = true,
    --     extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    --     max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- },
    -- ignore_install = {}, -- List of parsers to ignore installing
    -- autotag = {
    --     enable = true,
    --     filetypes = {
    --         "scala",
    --         "python",
    --         "html",
    --         "javascript",
    --         "typescript",
    --         "markdown",
    --     },
    -- },
})
