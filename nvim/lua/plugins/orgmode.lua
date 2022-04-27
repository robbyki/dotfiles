-- require("orgmode").setup({
--     org_agenda_files = { "~/Dropbox/org/*", "~/my-orgs/**/*" },
--     org_default_notes_file = "~/Dropbox/org/refile.org",
-- })

local M = {}

M.setup = function()
  local status_ok, org_mode = pcall(require, "orgmode")
  if not status_ok then
    return
  end
  org_mode.setup({
    org_agenda_files = { "~/Dropbox/org/*", "~/my-orgs/**/*" },
    org_default_notes_file = "~/Dropbox/org/refile.org",
    org_hide_leading_stars = false,
    -- org_indent_mode = noindent,
    diagnostic = false,
    org_agenda_templates = {
      T = {
        description = "Todo",
        template = "* TODO %?\n  DEADLINE: %T",
        target = "~/Dropbox/org/todos.org",
      },
      w = {
        description = "Work todo",
        template = "* TODO %?\n  DEADLINE: %T",
        target = "~/Dropbox/org/work.org",
      },
    },
    mappings = {
      global = {
        org_agenda = "go",
        org_capture = "gC",
      },
      org = {
        org_toggle_checkbox = "<cr>",
        org_cycle = "gn",
        org_global_cycle = "gN",
        org_timestamp_up = "+",
        org_timestamp_down = "-",
        org_do_demote = ">j",
        org_do_promote = ">k",
      },
    },
  })
end

return M
