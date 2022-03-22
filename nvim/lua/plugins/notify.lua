require("notify").setup({
    stages = "slide",
    timeout = 2500,
    render = "minimal",
    background_colour = "#24292e",
    max_width = 65,
    max_height = 3,
    minimum_width = 35,

    -- Icons for the different levels
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
})
vim.notify = require("notify")
vim.cmd([[
        hi NotifyINFOBorder guifg=#80ff95
        hi link NotifyINFOBody NotifyINFOBorder
        hi NotifyWARNBorder guifg=#fff454
        hi link NotifyWARNBody NotifyWARNBorder
        hi NotifyERRORBorder guifg=#c44323
        hi link NotifyERRORBody NotifyERRORBorder
    ]])
