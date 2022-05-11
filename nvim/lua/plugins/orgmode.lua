local has_ts, orgmode = pcall(require, "orgmode")
if not has_ts then
  return
end
orgmode.setup_ts_grammar()

-- Tree-sitter configuration
require("nvim-treesitter.configs").setup({
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = { "org" }, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = { "org" }, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = { "org" }, -- Or run :TSUpdate org
})

orgmode.setup({
  org_agenda_files = { "~/Dropbox/org/*", "~/my-orgs/**/*" },
  org_default_notes_file = "~/Dropbox/org/refile.org",
})
vim.cmd("language en_US.utf8")

-- local status_ok, org_mode = pcall(require, "orgmode")
-- if not status_ok then
--   return
-- end
--
-- org_mode.setup({
--   org_agenda_files = { "~/Dropbox/org/*", "~/my-orgs/**/*" },
--   org_default_notes_file = "~/Dropbox/org/refile.org",
--   org_hide_leading_stars = false,
--   -- org_indent_mode = noindent,
--   diagnostic = false,
--   org_agenda_templates = {
--     T = {
--       description = "Todo",
--       template = "* TODO %?\n  DEADLINE: %T",
--       target = "~/Dropbox/org/todos.org",
--     },
--     w = {
--       description = "Work todo",
--       template = "* TODO %?\n  DEADLINE: %T",
--       target = "~/Dropbox/org/work.org",
--     },
--   },
--   mappings = {
--     global = {
--       org_agenda = "go",
--       org_capture = "gC",
--     },
--     org = {
--       org_toggle_checkbox = "<cr>",
--       org_cycle = "gn",
--       org_global_cycle = "gN",
--       org_timestamp_up = "+",
--       org_timestamp_down = "-",
--       org_do_demote = ">j",
--       org_do_promote = ">k",
--     },
--   },
-- })
