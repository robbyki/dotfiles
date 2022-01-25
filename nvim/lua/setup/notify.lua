local nvim_notify = require("notify")
nvim_notify.setup({
  -- Render style
  render = "minimal",
  -- Animation style
  stages = "slide",
  -- Default timeout for notifications
  timeout = 100,
})

vim.notify = nvim_notify
