local M = {}

M.setup = function()

  local lspkind = require('lspkind')
  local cmp = require("cmp")
  local tabnine = require('cmp_tabnine.config')
  cmp.setup({
      snippet = {
          expand = function(args)
              vim.fn["vsnip#anonymous"](args.body)
          end,
      },
  
      mapping = {
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.close(),
          ["<CR>"] = cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = true,
          }),
      },
  
      sources = {
          { name = "nvim_lsp" },
          { name = "nvim_lua" },
          { name = 'cmp_tabnine' },
          { name = "vsnip" },
          { name = "buffer" },
          { name = "path" },
          { name = "calc" },
      },
  
      formatting = {
          format = function(entry, vim_item)
              vim_item.kind = lspkind.presets.default[vim_item.kind]
              vim_item.menu = ({
                  cmp_tabnine = "[TN]",
                  nvim_lsp = "",
                  buffer = "",
              })[entry.source.name]
              vim_item.kind = ({
                  Text = "",
                  Method = "",
                  Function = "",
                  Constructor = "",
                  Field = "",
                  Variable = "",
                  Class = "",
                  Interface = "ﰮ",
                  Module = "",
                  Property = "",
                  Unit = "",
                  Value = "",
                  Enum = "",
                  Keyword = "",
                  Snippet = "﬌",
                  Color = "",
                  File = "",
                  Reference = "",
                  Folder = "",
                  EnumMember = "",
                  Constant = "",
                  Struct = "",
                  Event = "",
                  Operator = "ﬦ",
                  TypeParameter = "",
              })[entry.source.name]
             --[vim_item.kind] .. " " .. vim_item.kind
              return vim_item
          end,
      },
  })

  tabnine:setup({
        max_lines = 1000;
        max_num_results = 20;
        sort = true;
        run_on_every_keystroke = true;
        snippet_placeholder = '..';
  })
end

return M
