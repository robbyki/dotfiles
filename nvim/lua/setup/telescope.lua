local telescope = require("telescope")
local telescope_actions = require("telescope.actions")

require("telescope").setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--with-filename",
      "--no-heading",
      "--line-number",
      "--column",
      "--hidden",
      "--smart-case",
      "--follow",
      "--color=never",
    },
    dynamic_preview_title = true,
    prompt_prefix = "❯ ",
    -- prompt_prefix = " ",
    selection_caret = " ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    -- layout_config = {
    --   horizontal = {
    --     preview_width = 0.6,
    --   },
    -- },
    layout_strategy = "flex",
    layout_config = {
      -- confusing but horizontal means side by side
      horizontal = { width = 0.9, height = 0.95, preview_width = 0.6 },
      vertical = { width = 0.8, height = 0.8, preview_height = 0.7 },
      -- horizontal = {
      --   prompt_position = "bottom",
      --   preview_width = 0.55,
      -- },
      -- vertical = {
      --   mirror = false,
      -- },
      -- width = 0.87,
      -- height = 0.80,
      -- preview_cutoff = 120,
    },

    -- layout_strategy = "horizontal",
    -- layout_config = {
    --     horizontal = {
    --         prompt_position = "top",
    --         preview_width = 0.55,
    --         results_width = 0.8,
    --     },
    --     vertical = { mirror = false },
    --     width = 0.87,
    --     height = 0.80,
    --     preview_cutoff = 120,
    -- },
    -- layout_config = {horizontal = {mirror = false}, vertical = {mirror = false}},
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    file_ignore_patterns = {
      "Downloads",
      ".bloop",
      ".metals",
      ".git",
      "cache",
      "target",
      "node_modules",
      "parser.c",
      "ScalaResources",
      "lua-language-server",
      "db",
      "gif",
      "jpeg",
      "jpg",
      "ods",
      "odt",
      "pdf",
      "png",
      "svg",
      "xcf",
      "xls",
    },
    path_display = { "shorten" },
    winblend = 0,
    border = {},
    -- borderchars = { '═', '│', '═', '│', '╒', '╕', '╛', '╘' },
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    use_less = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    mappings = {
      i = {
        ["<C-j>"] = telescope_actions.move_selection_next,
        ["<C-k>"] = telescope_actions.move_selection_previous,
        ["<Esc>"] = telescope_actions.close,
        ["<Tab>"] = telescope_actions.toggle_selection + telescope_actions.move_selection_next,
        ["<S-Tab>"] = telescope_actions.toggle_selection + telescope_actions.move_selection_previous,
        -- ["<CR>"] = actions.select_default + actions.center
      },
      n = {
        ["<C-j>"] = telescope_actions.move_selection_next,
        ["<C-k>"] = telescope_actions.move_selection_previous,
        ["<C-q>"] = telescope_actions.smart_send_to_qflist + telescope_actions.open_qflist,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    },
    media_files = {
      filetypes = { "png", "webp", "jpg", "jpeg" },
      find_cmd = "rg",
    },
    -- apparently this would control where telescope opens the preview
    project = {
      -- base_dirs = {'~/dev'},
      hidden_files = true,
      display_type = "full",
    },
  },
}
telescope.load_extension "fzf"
telescope.load_extension "media_files"
telescope.load_extension "project"
telescope.load_extension "zoxide"
-- telescope.load_extension "neoclip"

-- require("neoclip").setup {
--   default_register = { "+", "*" },
--   filter = nil,
--   history = 1000,
-- }

-- local previewers = require "telescope.previewers"
-- local Job = require "plenary.job"
-- local new_maker = function(filepath, bufnr, opts)
--   filepath = vim.fn.expand(filepath)
--   Job
--     :new({
--       command = "file",
--       args = { "--mime-type", "-b", filepath },
--       on_exit = function(j)
--         local mime_type = vim.split(j:result()[1], "/")[1]
--         if mime_type == "text" then
--           previewers.buffer_previewer_maker(filepath, bufnr, opts)
--         else
--           -- maybe we want to write something to the buffer here
--           vim.schedule(function()
--             vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
--           end)
--         end
--       end,
--     })
--     :sync()
-- end

-- require("telescope").setup {
--   defaults = {
--     buffer_previewer_maker = new_maker,
--   },
-- }
-- require('telescope').load_extension('fzy_native')

--local telescope_map = function(key, provider)
--    utils.map("n", "<leader>f" .. key, "<CMD>lua require('telescope.builtin')." .. provider .. "()<CR>")
--end
--
--telescope_map("b", "buffers")
--telescope_map("d", "lsp_document_diagnostics")
--telescope_map("D", "lsp_workspace_diagnostics")
--telescope_map(":", "command_history")
--telescope_map("f", "find_files")
--telescope_map("g", "git_files")
--telescope_map("h", "help_tags")
--telescope_map("p", "projects")
--telescope_map("r", "live_grep")
--telescope_map("R", "live_grep grep_open_files=true")
--telescope_map("/", "search_history")
--telescope_map("s", "lsp_document_symbols")
--telescope_map("T", "current_buffer_tags")
--telescope_map("t", "tags")
--
--utils.map("n", "<leader>fp", "<Cmd>lua require('telescope').extensions.projects.projects()<CR>")

--require'telescope'.setup {
--    extensions = {
--        media_files = {
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
-- Telescope Global remapping
--local action_state = require("telescope.actions.state")
--local actions = require("telescope.actions")
--local fb_actions = require("telescope._extensions.file_browser.actions")
--
--require("telescope").setup({
--  defaults = {
--    winblend = 20,
--    sorting_strategy = "descending",
--    layout_strategy = "flex",
--    layout_config = {
--      flex = {
--        flip_columns = 140,
--      },
--      vertical = {
--        preview_cutoff = 40,
--        prompt_position = "bottom",
--      },
--      horizontal = {
--        width = 0.9,
--        height = 0.8,
--      },
--    },
--    mappings = {
--      i = {
--        ["<esc>"] = actions.close,
--        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
--      },
--    },
--  },
--  extensions = {
--    file_browser = {
--      theme = "ivy",
--      mappings = {
--        ["i"] = {
--          ["<S-M>"] = fb_actions.move_file,
--        },
--        ["n"] = {
--          -- your custom normal mode mappings
--        },
--      },
--    },
--  },
--  pickers = {
--    buffers = {
--      sort_lastused = true,
--      mappings = {
--        i = {
--          ["<C-w>"] = "delete_buffer",
--        },
--        n = {
--          ["<C-w>"] = "delete_buffer",
--        },
--      },
--    },
--    -- https://gitter.im/nvim-telescope/community?at=6113b874025d436054c468e6 Fabian David Schmidt
--    find_files = {
--      on_input_filter_cb = function(prompt)
--        local find_colon = string.find(prompt, ":")
--        if find_colon then
--          local ret = string.sub(prompt, 1, find_colon - 1)
--          vim.schedule(function()
--            local prompt_bufnr = vim.api.nvim_get_current_buf()
--            local picker = action_state.get_current_picker(prompt_bufnr)
--            local lnum = tonumber(prompt:sub(find_colon + 1))
--            if type(lnum) == "number" then
--              local win = picker.previewer.state.winid
--              local bufnr = picker.previewer.state.bufnr
--              local line_count = vim.api.nvim_buf_line_count(bufnr)
--              vim.api.nvim_win_set_cursor(win, { math.max(1, math.min(lnum, line_count)), 0 })
--            end
--          end)
--          return { prompt = ret }
--        end
--      end,
--      attach_mappings = function()
--        actions.select_default:enhance({
--          post = function()
--            -- if we found something, go to line
--            local prompt = action_state.get_current_line()
--            local find_colon = string.find(prompt, ":")
--            if find_colon then
--              local lnum = tonumber(prompt:sub(find_colon + 1))
--              vim.api.nvim_win_set_cursor(0, { lnum, 0 })
--            end
--          end,
--        })
--        return true
--      end,
--    },
--  },
--})
--
--require("telescope").load_extension("fzf")
--require("telescope").load_extension("sessions")
--require("telescope").load_extension("file_browser")
