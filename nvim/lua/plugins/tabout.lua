require("tabout").setup({
  tabkey = "<C-l>", -- key to trigger tabout, set to an empty string to disable
  backwards_tabkey = "<C-h>", -- key to trigger backwards tabout, set to an empty string to disable
  act_as_tab = false, -- shift content if tab out is not possible
  act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
  enable_backwards = true, -- well ...
  completion = false, -- if the tabkey is used in a completion pum
  tabouts = {
    { open = "'", close = "'" },
    { open = '"', close = '"' },
    { open = "`", close = "`" },
    { open = "(", close = ")" },
    { open = "[", close = "]" },
    { open = "{", close = "}" },
  },
  ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
})

vim.api.nvim_set_keymap("i", "<a-l>", "<Plug>(TaboutMulti)", { silent = true })
