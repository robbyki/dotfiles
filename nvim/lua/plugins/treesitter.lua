-- require("orgmode").setup_ts_grammar()

local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = {
    "bash",
    "dockerfile",
    "erlang",
    "go",
    "gomod",
    "gowork",
    "html",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "lua",
    "nix",
    "python",
    "rust",
    "scala",
    "toml",
    "typescript",
    "vim",
    "yaml",
  },
  highlight = {
    enable = true,
    disable = {},
    use_languagetree = true,
    additional_vim_regex_highlighting = true,
  },
  incremental_selection = {
    enable = false,
    keymaps = {
      init_selection = "gnn",
      code_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = false,
    disable = { "go", "yaml", "yml", "python", "org" },
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true,
    },
    highlight_current_scope = { enable = true },
    enable = true,
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
  },
  navigation = {
    enable = true,
    keymaps = {
      goto_definition = "'d", -- mapping to go to definition of symbol under cursor
      list_definitions = "'D", -- mapping to list all definitions in current file
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = {
          cpp = "{ @class.inner }",
        },
        ["at"] = "@tag.outer",
        ["it"] = "@tag.inner",
        ["p"] = "@parameter.inner",
        ["ib"] = "@block.inner",
        ["ab"] = "@block.outer",
      },
    },
    swap = {
      enable = true,
      swap_next = { ["<leader>a"] = "@parameter.inner" },
      swap_previous = { ["<leader>A"] = "@parameter.inner" },
    },
    move = {
      enable = true,
      goto_next_start = {
        ["]f"] = "@function.outer",
        ["]]"] = "@class.outer",
        ["]p"] = "@parameter.outer",
        ["]c"] = "@call.outer",
      },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[["] = "@class.outer",
        ["[p"] = "@parameter.outer",
        ["[c"] = "@call.outer",
      },
    },
    lsp_interop = {
      enable = true,
      peek_definition_code = {
        ["<Leader>df"] = "@function.outer",
        ["<Leader>dF"] = "@class.outer",
      },
    },
  },
  textsubjects = {
    enable = true,
    prev_selection = ",", -- (Optional) keymap to select the previous selection
    keymaps = {
      ["."] = "textsubjects-smart",
      [";"] = "textsubjects-container-outer",
      ["i;"] = "textsubjects-container-inner",
    },
  },
  playground = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  context_commentstring = { enable = true },
  matchup = {
    enable = false,
    disable = {},
  },
})
