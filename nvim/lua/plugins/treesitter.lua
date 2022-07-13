-- require("orgmode").setup_ts_grammar()

local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = {
    "norg",
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
    "norg",
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
    disable = { "yaml", "yml", "python", "org" },
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
  autopairs = {
    enable = true,
  },
  context_commentstring = { enable = true },
  matchup = {
    enable = false,
    disable = {},
  },
})
