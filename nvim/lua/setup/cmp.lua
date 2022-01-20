-- local cmp = require("cmp")
-- local lspkind = require('lspkind')
-- local tabnine = require('cmp_tabnine.config')
--
-- cmp.setup({
--     snippet = {
--         expand = function(args)
--             vim.fn["vsnip#anonymous"](args.body)
--         end,
--     },
--     mapping = {
--         ["<C-p>"] = cmp.mapping.select_prev_item(),
--         ["<C-n>"] = cmp.mapping.select_next_item(),
--         -- this was causing issues with vim c-d de-indenting
--         -- ["<C-d>"] = cmp.mapping.scroll_docs(-4),
--         -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
--         ["<C-Space>"] = cmp.mapping.complete(),
--         ["<C-e>"] = cmp.mapping.close(),
--         ["<CR>"] = cmp.mapping.confirm({
--             behavior = cmp.ConfirmBehavior.Replace,
--             select = true,
--         }),
--     },
--     sources = {
--         { name = "nvim_lsp" },
--         { name = "nvim_lua" },
--         { name = 'cmp_tabnine' },
--         { name = "vsnip" },
--         { name = "buffer" },
--         { name = "path" },
--         { name = "calc" },
--     },
--     formatting = {
--         format = function(entry, vim_item)
--             vim_item.kind = lspkind.presets.default[vim_item.kind]
--             vim_item.menu = ({
--                 cmp_tabnine = "[TN]",
--                 nvim_lsp = "",
--                 buffer = "",
--             })[entry.source.name]
--             vim_item.kind = ({
--                 Text = "",
--                 Method = "",
--                 Function = "",
--                 Constructor = "",
--                 Field = "",
--                 Variable = "",
--                 Class = "",
--                 Interface = "ﰮ",
--                 Module = "",
--                 Property = "",
--                 Unit = "",
--                 Value = "",
--                 Enum = "",
--                 Keyword = "",
--                 Snippet = "﬌",
--                 Color = "",
--                 File = "",
--                 Reference = "",
--                 Folder = "",
--                 EnumMember = "",
--                 Constant = "",
--                 Struct = "",
--                 Event = "",
--                 Operator = "ﬦ",
--                 TypeParameter = "",
--             })[entry.source.name]
--            --[vim_item.kind] .. " " .. vim_item.kind
--             return vim_item
--         end,
--     },
-- })
--

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local tabnine = require "cmp_tabnine.config"
local cmp = require "cmp"

local select_prev_item = cmp.mapping {
    c = function()
        if cmp.visible() then
            cmp.select_prev_item()
        else
            cmp.complete()
        end
    end,
    i = function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        elseif vim.fn["vsnip#jumpable"](-1) == 1 then
            feedkey("<Plug>(vsnip-jump-prev)", "")
            --[[ elseif has_words_before() then
				cmp.complete() ]]
        else
            fallback()
        end
    end,
    s = function(fallback)
        if vim.fn["vsnip#jumpable"](-1) == 1 then
            feedkey("<Plug>(vsnip-jump-prev)", "")
        else
            fallback()
        end
    end,
}

local select_next_item = cmp.mapping {
    c = function()
        if cmp.visible() then
            cmp.select_next_item()
        else
            cmp.complete()
        end
    end,
    i = function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        elseif vim.fn["vsnip#available"](1) == 1 then
            feedkey("<Plug>(vsnip-expand-or-jump)", "")
            --[[ elseif has_words_before() then
				cmp.complete() ]]
        elseif package.loaded["neogen"] ~= nil and require("neogen").jumpable() then
            require("neogen").jump_next()
        else
            fallback()
        end
    end,
    s = function(fallback)
        if vim.fn["vsnip#available"](1) == 1 then
            feedkey("<Plug>(vsnip-expand-or-jump)", "")
        else
            fallback()
        end
    end,
}

cmp.setup {
    documentation = {
        border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
    },
    formatting = {
        format = require("lspkind").cmp_format {
            with_text = true,
            menu = {
                cmp_tabnine = "[TN]",
                buffer = "[BUFFER]",
                fuzzy_path = "[FZ-PATH]",
                fuzzy_buffer = "[FZ-BUFFER]",
                nvim_lsp = "[LSP]",
                path = "[PATH]",
                tmux = "[TMUX]",
                vsnip = "[SNIPPET]",
                -- ["vim-dadbod-completion"] = "[DB]",
            },
        },
    },
    mapping = {
        ["<C-j>"] = select_next_item,
        ["<C-k>"] = select_prev_item,
        ["<C-n>"] = select_next_item,
        ["<C-p>"] = select_prev_item,
        ["<Tab>"] = select_next_item,
        ["<S-Tab>"] = select_prev_item,
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "c", "i" }),
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "c", "i" }),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "c", "i" }),
        ["<C-c>"] = cmp.mapping(cmp.mapping.close(), { "c", "i" }),
        ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        },
    },
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "cmp_git" },
        { name = "path" },
        {
            name = "buffer",
            option = {
                get_bufnrs = function()
                    -- visible buffers
                    local bufs = {}
                    for _, win in ipairs(vim.api.nvim_list_wins()) do
                        bufs[vim.api.nvim_win_get_buf(win)] = true
                    end
                    return vim.tbl_keys(bufs)
                end,
            },
        },
        {
            name = "tmux",
            option = {
                all_panes = true,
                trigger_characters = {},
            },
        },
        { name = "vsnip" },
    },
}

cmp.setup.cmdline("/", {
    sources = {
        { name = "buffer" },
        { name = "fuzzy_buffer" },
    },
})

cmp.setup.cmdline(":", {
    sources = {
        { name = "cmdline" },
        { name = "path" },
        {
            name = "fuzzy_path",
            options = { fd_cmd = { "fd", "--max-depth", "20", "--hidden", "--exclude", ".git" } },
        },
        { name = "buffer" },
        { name = "fuzzy_buffer" },
    },
})

tabnine:setup {
    max_lines = 1000,
    max_num_results = 20,
    sort = true,
    run_on_every_keystroke = true,
    snippet_placeholder = "..",
}
