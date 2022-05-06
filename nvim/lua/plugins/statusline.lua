local gps = require("nvim-gps")
local colors = require("kanagawa.colors").setup()

-- local word_count = function()
--   if vim.fn.mode() == "v" or vim.fn.mode() == "V" then
--     return string.format("%sW", vim.fn.wordcount().visual_words)
--   else
--     return string.format("%sW", vim.fn.wordcount().words)
--   end
-- end

local function lualine_orgmode()
  local orgmode = require("orgmode")
  return orgmode.statusline()
end

local conditions = {
  buffer_is_modified = function()
    return vim.api.nvim_buf_get_option(vim.api.nvim_get_current_buf(), "modified")
  end,
  buffer_is_not_modified = function()
    return not vim.api.nvim_buf_get_option(vim.api.nvim_get_current_buf(), "modified")
  end,
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand("%:p:h")
    local gitdir = vim.fn.finddir(".git", filepath .. ";")
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
  lsp_status = function()
    local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return false
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return true
      end
    end
    return false
  end,
}

local plugins = {
  mode_inactive = {
    function()
      return "INACTIVE"
    end,
    color = "LualineFilenameInactive",
  },
  filename = {
    function()
      if vim.opt.bo.filetype == "help" then
        return "HELP - " .. vim.fn.expand("%:t:r")
      end

      local is_modified = vim.api.nvim_buf_get_option(vim.api.nvim_get_current_buf(), "modified")
      local filename = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.")
      local fg = colors.fg
      local bg = colors.bg_statusline
      local gui = "NONE"

      if is_modified then
        fg = colors.yellow
        filename = filename .. " "
        gui = "bold"
      end

      vim.cmd(string.format("hi LualineFilename guifg=%s guibg=%s gui=%s", fg, bg, gui))

      return filename
    end,
    color = "LualineFilename",
  },

  diagnostics = {
    "diagnostics",
    sources = { "nvim_lsp" },
    color_error = colors.red,
    color_warn = colors.yellow,
    color_info = colors.cyan,
    color_hint = colors.magenta,
    sections = { "error", "warn", "info", "hint" },
    symbols = { error = " ", warn = " ", info = " ", hint = "H" },
  },

  branch = {
    "branch",
    icon = "",
    condition = conditions.check_git_workspace,
    color = { fg = colors.orange },
  },

  diff = {
    "diff",
    symbols = { added = " ", modified = " ", removed = " " },
    color_added = colors.green,
    color_modified = colors.orange,
    color_removed = colors.red,
    condition = conditions.hide_in_width,
  },
  metals = {
    function()
      return vim.g["metals_status"] or ""
    end,
    cond = function()
      local filetype = vim.bo.filetype
      return filetype == "scala" or filetype == "sbt"
    end,
  },
  lsp_server = {
    function()
      if conditions.lsp_status() then
        return ""
      end
      return ""
    end,
    color = { fg = colors.white },
  },

  -- Add components to right sections
  filetype = {
    "bo:filetype",
    upper = true,
    icon_only = true,
  },

  encoding = {
    "o:encoding", -- option component same as &encoding in viml
    upper = true,
    condition = conditions.hide_in_width,
    color = { fg = colors.green },
  },
}

require("lualine").setup({
  options = {
    theme = "kanagawa",
    icons_enabled = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    -- section_separators = { left = "", right = "" },
    globalstatus = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      {
        "diff",
        symbols = {
          added = " ",
          modified = " ",
          removed = " ",
        },
      },
      {
        "diagnostics",
        symbols = {
          error = " ",
          warn = " ",
          info = " ",
          hint = " ",
        },
      },
    },
    lualine_c = {
      -- {
      --     "filetype",
      --     icon_only = true,
      --     padding = {
      --         left = 1,
      --         right = 0,
      --     },
      --     separator = {
      --         right = "",
      --     },
      -- },
      { gps.get_location, cond = gps.is_available },
    },
    lualine_x = { plugins.filename, plugins.filetype, plugins.lsp_server, plugins.metals },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {
      plugins.mode_inactive,
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  extensions = {
    "nvim-tree",
    "toggleterm",
    "fzf",
    "symbols-outline",
  },
  disabled_filetypes = {
    "HELP",
  },
})
