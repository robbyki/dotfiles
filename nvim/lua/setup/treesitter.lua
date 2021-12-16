require("nvim-treesitter.configs").setup {
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  },
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
  indent = { enable = true }
}

-- require("nvim-treesitter.configs").setup({
--   rainbow = {
--     enable = true,
--     extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
--     max_file_lines = nil, -- Do not enable for files with more than n lines, int
--   },
--   autotag = {
--     enable = true,
--     filetypes = {
--       "scala",
--       "python",
--       "html",
--       "javascript",
--       "typescript",
--       "markdown",
--     },
--   },
--   incremental_selection = {
--     enable = true,
--     keymaps = {
--       init_selection = "<CR>",
--       scope_incremental = "<CR>",
--       node_incremental = "<CR>",
--       node_decremental = "<TAB>",
--     },
--   },
-- })
-- -- Setup treesitter
-- local ts = require("nvim-treesitter.configs")
-- ts.setup({ ensure_installed = "maintained", highlight = { enable = true } })


--require'nvim-treesitter.configs'.setup {
--    ensure_installed = 'maintained', -- one of "all", "maintained" (parsers with maintainers), or a list of languages
--    highlight = {
--        enable = true, -- false will disable the whole extension
--        disable = { "" }
--    },
--    -- indent = {enable = true, disable = {"python", "html", "javascript"}},
--    indent = {enable = {"scala"}},
--    playground = {
--        enable = true,
--        disable = {},
--        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
--        persist_queries = false -- Whether the query persists across vim sessions
--    },
--    autotag = {enable = true},
--    rainbow = {enable = true},
----    context_commentstring = {enable = true, config = {javascriptreact = {style_element = '{/*%s*/}'}}}
--    context_commentstring = {enable = true}
--    -- refactor = {highlight_definitions = {enable = true}}
--}
