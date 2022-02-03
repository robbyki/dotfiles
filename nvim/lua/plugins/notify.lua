require('notify').setup({
    -- stages = "fade_in_slide_out",
    stages = "static",

    timeout = 4000,

    -- For stages that change opacity this is treated as the highlight behind the window
    background_colour = "#24292e",

    -- Icons for the different levels
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
})
vim.notify = require('notify')
