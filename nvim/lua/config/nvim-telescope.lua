local actions = require('telescope.actions')

require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
      	    '--hidden'
        },
        prompt_prefix = "❯ ",
        -- prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {horizontal = {mirror = false}, vertical = {mirror = false}},
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
        file_ignore_patterns = {".git", "cache", "target", "node_modules", "parser.c", "ScalaResources", "lua-language-server" },
        path_diplay = true,
        winblend = 0,
        border = {},
        borderchars = { '═', '│', '═', '│', '╒', '╕', '╛', '╘' },
        -- borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<Esc>"] = actions.close,
                ["<Tab>"] = actions.toggle_selection + actions.move_selection_next,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_previous,
                -- ["<CR>"] = actions.select_default + actions.center
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
            }
        },
        extensions = {
          fzf_native = {
              override_generic_sorter = false,
              override_file_sorter = true,
              case_mode = "smart_case",
          },
        },
    }
}
require('telescope').load_extension('fzy_native')
require('telescope').load_extension('media_files')
require('telescope').load_extension('project')



--require'telescope'.setup {
--    extensions = {
--        media_files = {
--            -- filetypes whitelist
--            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
--            filetypes = {"png", "webp", "jpg", "jpeg"},
--            find_cmd = "rg" -- find command (defaults to `fd`)
--        },
--        fzy_native = {
--            override_generic_sorter = false,
--            override_file_sorter = true,
--        },
--    project = {
--      display_type = 'full'
--    }
--  }
--}
--require('telescope').setup {
--  extensions = {
--    project = {
--      base_dirs = {
--        {'~/dev'}
--      },
--      hidden_files = true -- default: false
--    }
--  }
--}


-- https://github.com/nvim-telescope/telescope.nvim
--local M = {}
--
--M.setup = function()
--  require("telescope").setup({
--    defaults = {
--      file_ignore_patterns = { "target", "node_modules", "parser.c", "ScalaResources" },
--      prompt_prefix = "❯",
--      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
--      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
--    },
--  })
--
--  require("telescope").load_extension("fzy_native")
--end
--
---- This is mainly for Metals since we don't respond to "" as a query to get all
---- the symbols. This will first get the input form the user and then execute
---- the query.
--M.lsp_workspace_symbols = function()
--  local input = vim.fn.input("Query: ")
--  vim.api.nvim_command("normal :esc<CR>")
--  if not input or #input == 0 then
--    return
--  end
--  require("telescope.builtin").lsp_workspace_symbols({ query = input })
--end
--
--return M
--
--
