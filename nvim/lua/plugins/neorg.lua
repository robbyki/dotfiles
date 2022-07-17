local has_ts, neorg = pcall(require, "neorg")
if not has_ts then
  return
end

neorg.setup({
  -- Tell Neorg what modules to load
  load = {
    ["core.defaults"] = {}, -- Load all the default modules
    ["core.norg.concealer"] = {
      config = {
        icons = {
          heading = {
            level_1 = { enabled = true, icon = "◉" },
            level_2 = { enabled = true, icon = " ◎" },
            level_3 = { enabled = true, icon = "  ○" },
            level_4 = { enabled = true, icon = "   ✺" },
            level_5 = { enabled = true, icon = "    ▶" },
            level_6 = { enabled = true, icon = "     ⤷" },
          },
        },
      },
    }, -- Allows for use of icons
    ["core.norg.dirman"] = {
      config = { workspaces = { work = "~/dev/org/work", life = "~/dev/org/personal" } },
    },
    ["core.gtd.base"] = { config = { workspace = "work" } },
    ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp",
      },
    },
    ["core.norg.journal"] = {
      config = {},
    },
    ["core.norg.qol.toc"] = {
      config = {
        toc_split_placement = "left",
        default_toc_mode = "split",
      },
    },
    ["core.export"] = {
      config = { -- Note that this table is optional and doesn't need to be provided
        -- Configuration here
      },
    },
    ["core.export.markdown"] = {
      config = { -- Note that this table is optional and doesn't need to be provided
        -- Configuration here
      },
    },
    ["core.integrations.treesitter"] = {},
    ["core.integrations.telescope"] = {},
    ["core.keybinds"] = {
      config = {
        hook = function(keybinds)
          keybinds.unmap("norg", "n", "<C-s>")
          keybinds.map_event_to_mode("norg", {
            n = { -- Bind keys in normal mode
              { "<leader>nfl", "core.integrations.telescope.find_linkable" }, -- Keys for managing GTD
              { "<leader>ntc", "core.gtd.base.capture" },
              { "<leader>ntv", "core.gtd.base.views" },
              { "<leader>nte", "core.gtd.base.edit" }, -- Keys for managing notes
              { "<leader>nnn", "core.norg.dirman.new.note" }, -- mnemonic: markup toggle
              { "<leader>nmt", "core.norg.concealer.toggle-markup" },
            },
          }, { silent = true, noremap = true })
        end,
      },
    },
  },
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.org", "*.norg", "*.md" },
  callback = function()
    vim.opt.conceallevel = 0
    --vim.opt.concealcursor = 'n'
    vim.cmd([[
    syn match keyword /@code/ containedin=ALL conceal cchar=[
    syn match keyword /@end/ containedin=ALL conceal cchar=]
    syn match keyword /@/ containedin=ALL conceal cchar=[
    ]])
  end,
})
