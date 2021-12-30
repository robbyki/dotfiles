-- local telescope = require("telescope")
local telescope_actions = require("telescope.actions")

require("telescope").setup({
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
    -- entry_prefix = "  ",
    -- initial_mode = "normal",
    -- selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "vertical",
    -- layout_config = {
    -- horizontal = { width = 0.9, height = 0.95, preview_width = 0.6 },
    -- vertical = { preview_height = 0.8 },
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
    -- },

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
    -- file_sorter = require("telescope.sorters").get_fzy_sorter,
    -- file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    -- grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    -- qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    -- buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    file_ignore_patterns = {
      "Downloads/",
      "Documents/",
      ".bloop/",
      ".metals/",
      "go/",
      ".git/",
      "cache",
      "target/",
      ".tmux/",
      "fzy/",
      "node_modules",
      "parser.c",
      "node",
      "ScalaResources/",
      "^lua-language-server/",
      ".dropbox%-dist/",
      ".vscode/",
      ".dropbox%-dist/",
      ".mozilla/",
      ".zoom/",
      ".jfrog/",
      ".bluemix/",
      "db",
      "%.vim/",
      "%.local/",
      "%.cache/",
      "%.oh%-my%-zsh/",
      ".m2",
      "%.gif",
      "%.zcompdump",
      "%.jpeg",
      "%.jpg",
      "%.ods",
      "%.odt",
      "%.pdf",
      "%.png",
      "%.svg",
      "%.xcf",
      "%.xls",
    },
    -- path_display = { "shorten" },
    -- winblend = 0,
    -- border = {},
    -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    -- color_devicons = true,
    -- use_less = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    mappings = {
      i = {
        ["<C-j>"] = telescope_actions.move_selection_next,
        ["<C-k>"] = telescope_actions.move_selection_previous,
        ["<esc>"] = telescope_actions.close,
        ["<Tab>"] = telescope_actions.toggle_selection + telescope_actions.move_selection_next,
        ["<S-Tab>"] = telescope_actions.toggle_selection + telescope_actions.move_selection_previous,
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
    frecency = {
      show_scores = true,
      show_unindexed = true,
      ignore_patterns = { "*.git/*", "*/tmp/*" },
    },
  },
})

require("telescope").load_extension("fzf")
require("telescope").load_extension("media_files")
require("telescope").load_extension("project")
require("telescope").load_extension("zoxide")
require("telescope").load_extension("gh")
require("telescope").load_extension("frecency")

-- local M = {}
--
-- -- requires github extension
-- function M.gh_issues()
--   local opts = {}
--   opts.prompt_title = " Issues"
--   -- opts.author = '@me'
--   require("telescope").extensions.gh.issues(opts)
-- end
--
-- -- @TODOUA: works for basic/default scenarios, file issue or PR
-- -- Use my fzf-gh for now for PRs
-- function M.gh_prs()
--   local opts = {}
--   opts.prompt_title = " Pull Requests"
--   -- opts.author = 'joelpalmer'
--   -- opts.search = 'is:open is:pr review-requested:@me'
--   require("telescope").extensions.gh.pull_request(opts)
-- end
-- -- end github functions
--
-- function M.rg()
--   require("telescope.builtin").grep_string({
--     search = vim.fn.input("Rg❯  "),
--   })
-- end
--
-- M.project_files = function()
--   local _, ret, stderr = utils.get_os_command_output({
--     "git",
--     "rev-parse",
--     "--is-inside-work-tree",
--   })
--
--   local gopts = {}
--   local fopts = {}
--
--   gopts.prompt_title = "Git Files"
--   gopts.prompt_prefix = " ❯ "
--   gopts.show_untracked = false
--
--   fopts.hidden = true
--   fopts.file_ignore_patterns = {
--     "^Downloads/",
--     "^.bloop/",
--     "^.metals/",
--     "^.git/",
--     "cache",
--     "^target/",
--     "node_modules",
--     "parser.c",
--     "^ScalaResources/",
--     "^lua-language-server/",
--     ".dropbox-dist/",
--     "^.dropbox-dist/",
--     "db",
--     "%.gif",
--     "%.jpeg",
--     "%.jpg",
--     "%.ods",
--     "%.odt",
--     "%.pdf",
--     "%.png",
--     "%.svg",
--     "%.xcf",
--     "%.xls",
--     ".local/",
--     "Downloads/",
--     ".git/",
--     "Dropbox/.*",
--   }
--
--   if ret == 0 then
--     require("telescope.builtin").git_files(gopts)
--   else
--     require("telescope.builtin").find_files(fopts)
--   end
-- end
--
-- -- @TODOUA: work HOME dot files into one of these
-- function M.grep_notes()
--   local opts = {}
--   opts.hidden = true
--   -- opts.file_ignore_patterns = { 'thesaurus/'}
--   opts.search_dirs = {
--     "~/Documents/notes/",
--   }
--   opts.prompt_prefix = "  ❯  "
--   opts.prompt_title = "Grep Notes"
--   require("telescope.builtin").live_grep(opts)
-- end
--
-- function M.find_notes()
--   require("telescope.builtin").find_files({
--     prompt_title = "Find Notes",
--     cwd = "~/Documents/notes/",
--     -- layout_strategy = "horizontal",
--     -- layout_config = { preview_width = 0.65, width = 0.75 },
--   })
-- end
--
-- function M.find_home()
--   local opts = {}
--   opts.hidden = true
--   opts.cwd = "~"
--   opts.file_ignore_patterns = {
--     "^Downloads/",
--     "^.bloop/",
--     "^.metals/",
--     "^.git/",
--     "cache",
--     "^target/",
--     "node_modules",
--     "parser.c",
--     "^ScalaResources/",
--     "^lua-language-server/",
--     ".dropbox-dist/",
--     "^.dropbox-dist/",
--     "db",
--     "%.gif",
--     "%.jpeg",
--     "%.jpg",
--     "%.ods",
--     "%.odt",
--     "%.pdf",
--     "%.png",
--     "%.svg",
--     "%.xcf",
--     "%.xls",
--     "%.local/",
--     "%.cache/",
--     "Downloads/",
--     "%.git/",
--     "Dropbox/.*",
--     "Library/.*",
--     "%.rustup/.*",
--     "%.oh%-my%-zsh/",
--     "zsh%-syntax%-highlighting/",
--   }
--   require("telescope.builtin").find_files(opts)
-- end
--
-- function M.browse_notes()
--   require("telescope.builtin").file_browser({
--     prompt_title = "Notes Browser",
--     prompt_prefix = " ﮷ ❯ ",
--     cwd = "~/Documents/notes/",
--     -- layout_strategy = "horizontal",
--     -- layout_config = { preview_width = 0.65, width = 0.75 },
--   })
-- end
--
-- function M.file_explorer()
--   require("telescope.builtin").file_browser({
--     prompt_title = "File Browser",
--     cwd = "~",
--     -- layout_strategy = "horizontal",
--     -- layout_config = { preview_width = 0.65, width = 0.75 },
--     hidden = true,
--   })
-- end
--
-- function M.nvim_config()
--   require("telescope.builtin").find_files({
--     prompt_title = "Find Config",
--     cwd = "~/.dotfiles/nvim",
--     -- layout_strategy = "horizontal",
--     -- layout_config = { preview_width = 0.65, width = 0.75 },
--   })
-- end
--
-- vim.api.nvim_set_keymap(
--   "n",
--   "<Leader>ff",
--   [[<cmd>lua require'telescope.builtin'.find_files({file_ignore_patterns = {"__pycache__", "%.jpeg", "%.png", "%.jpg", "%.json", "%.txt", "%.xml", "Session.vim"}})<CR>]],
--   { noremap = true, silent = true }
-- )
-- vim.api.nvim_set_keymap("n", "<Leader>fF", [[<cmd>lua require'modules.telescope'.find_home()<CR>]], { noremap = true, silent = true })
-- -- vim.api.nvim_set_keymap("n", "<Leader>f;", [[<cmd>lua require'telescope.command'.load_command()<CR>]], { noremap = true, silent = true })
-- -- vim.api.nvim_set_keymap("n", "<Leader>fc", [[<cmd>lua require'telescope.builtin'.commands()<CR>]], { noremap = true, silent = true })
-- -- vim.api.nvim_set_keymap("n", "<Leader>fr", [[<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>]], { noremap = true, silent = true })
-- -- -- live grep slowness: https://github.com/nvim-telescope/telescope.nvim/issues/392
-- -- vim.api.nvim_set_keymap(
-- --   "n",
-- --   "<Leader>fl",
-- --   [[<cmd>lua require'telescope.builtin'.live_grep({file_ignore_patterns = {"__pycache__", "%.jpeg", "%.png", "%.jpg", "%.json", "%.txt", "%.xml", "Session.vim"}})<CR>]],
-- --   { noremap = true, silent = true }
-- -- )
-- -- vim.api.nvim_set_keymap("n", "<Leader>fk", [[<cmd>lua require'telescope.builtin'.keymaps()<CR>]], { noremap = true, silent = true })
-- -- vim.api.nvim_set_keymap("n", "<Leader>fb", [[<cmd>lua require'telescope.builtin'.buffers()<CR>]], { noremap = true, silent = true })
-- -- vim.api.nvim_set_keymap("n", "<Leader>fh", [[<cmd>lua require'telescope.builtin'.help_tags()<CR>]], { noremap = true, silent = true })
-- -- vim.api.nvim_set_keymap("n", "<leader>fm", [[<cmd>lua require'telescope.builtin'.marks()<CR>]], { noremap = true, silent = true })
-- -- vim.api.nvim_set_keymap("n", "<leader>fK", [[<cmd>lua require'telescope.builtin'.grep_string()<CR>]], { noremap = true, silent = true }) -- CWORD
-- -- -- find files with gitfiles & fallback on find_files
-- -- vim.api.nvim_set_keymap("n", "<leader>fg", [[<cmd>lua require'modules.telescope'.project_files()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>f/", [[<cmd>lua require'modules.telescope'.nvim_config()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>fn", [[<cmd>lua require'modules.telescope'.find_notes()<CR>]], { noremap = true, silent = true })
-- -- vim.api.nvim_set_keymap(
-- --   "n",
-- --   "<leader>fe",
-- --   [[<cmd>lua require'telescope.builtin'.file_browser({ hidden = true })<CR>]],
-- --   { noremap = true, silent = true }
-- -- ) -- CWD
-- -- vim.api.nvim_set_keymap("n", "<leader>fE", [[<cmd>lua require'modules.telescope'.file_explorer()<CR>]], { noremap = true, silent = true }) -- $HOME
-- -- vim.api.nvim_set_keymap("n", "<leader>f.", [[<cmd>lua require'modules.telescope'.rg()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>fp", [[<cmd>lua require'telescope'.extensions.project.project{}<CR>]], { noremap = true, silent = true })
-- --
-- -- github branches
-- vim.api.nvim_set_keymap("n", "<leader>fgb", [[<cmd>lua require'telescope.builtin'.git_branches()<CR>]], { noremap = true, silent = true})
--
-- return M
--
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
