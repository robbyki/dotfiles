local alpha = require("alpha")

local header = {
  type = "text",
  val = {
    "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠤⠖⠚⢉⣩⣭⡭⠛⠓⠲⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀  ",
    "    ⠀⠀⠀⠀⠀⠀⢀⡴⠋⠁⠀⠀⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢦⡀⠀⠀⠀⠀  ",
    "    ⠀⠀⠀⠀⢀⡴⠃⢀⡴⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀  ",
    "    ⠀⠀⠀⠀⡾⠁⣠⠋⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀  ",
    "    ⠀⠀⠀⣸⠁⢰⠃⠀⠀⠀⠈⢣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀  ",
    "    ⠀⠀⠀⡇⠀⡾⡀⠀⠀⠀⠀⣀⣹⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀  ",
    "    ⠀⠀⢸⠃⢀⣇⡈⠀⠀⠀⠀⠀⠀⢀⡑⢄⡀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇  ",
    "    ⠀⠀⢸⠀⢻⡟⡻⢶⡆⠀⠀⠀⠀⡼⠟⡳⢿⣦⡑⢄⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇  ",
    "    ⠀⠀⣸⠀⢸⠃⡇⢀⠇⠀⠀⠀⠀⠀⡼⠀⠀⠈⣿⡗⠂⠀⠀⠀⠀⠀⠀⠀⢸⠁  ",
    "    ⠀⠀⡏⠀⣼⠀⢳⠊⠀⠀⠀⠀⠀⠀⠱⣀⣀⠔⣸⠁⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀  ",
    "    ⠀⠀⡇⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀  ",
    "    ⠀⢸⠃⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⠀⢀⠀⠀⠀⠀⠀⣾⠀⠀  ",
    "    ⠀⣸⠀⠀⠹⡄⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⠀⠸⠀⠀⠀⠀⠀⡇⠀⠀  ",
    "    ⠀⡏⠀⠀⠀⠙⣆⠀⠀⠀⠀⠀⠀⠀⢀⣠⢶⡇⠀⠀⢰⡀⠀⠀⠀⠀⠀⡇⠀⠀  ",
    "    ⢰⠇⡄⠀⠀⠀⡿⢣⣀⣀⣀⡤⠴⡞⠉⠀⢸⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣧⠀⠀  ",
    "    ⣸⠀⡇⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⢹⠀⠀⢸⠀⠀⢀⣿⠇⠀⠀⠀⠁⠀⢸⠀⠀  ",
    "    ⣿⠀⡇⠀⠀⠀⠀⠀⢀⡤⠤⠶⠶⠾⠤⠄⢸⠀⡀⠸⣿⣀⠀⠀⠀⠀⠀⠈⣇⠀  ",
    "    ⡇⠀⡇⠀⠀⡀⠀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠸⡌⣵⡀⢳⡇⠀⠀⠀⠀⠀⠀⢹⡀  ",
    "    ⡇⠀⠇⠀⠀⡇⡸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠮⢧⣀⣻⢂⠀⠀⠀⠀⠀⠀⢧  ",
    "    ⣇⠀⢠⠀⠀⢳⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡎⣆⠀⠀⠀⠀⠀⠘  ",
  },
  opts = {
    position = "center",
    hl = "Type",
  },
}

local handle = io.popen('fd -d 2 . $HOME"/.local/share/nvim/site/pack/packer" | head -n -2 | wc -l | tr -d "\n" ')
local plugins = handle:read("*a")
handle:close()

local thingy = io.popen('echo "$(date +%a) $(date +%d) $(date +%b)" | tr -d "\n"')
local date = thingy:read("*a")
thingy:close()

local heading = {
  type = "text",
  val = "┌──   Today is " .. date .. " ─┐",
  opts = {
    position = "center",
    hl = "Identifier",
  },
}

local plugin_count = {
  type = "text",
  val = "└─   " .. plugins .. " plugins in total ─┘",
  opts = {
    position = "center",
    hl = "Identifier",
  },
}

-- local footer {
--     local plugins = #vim.tbl_keys(packer_plugins)
--     local v = vim.version()
--     local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
--     string.format(" %s   v%s.%s.%s  %s", plugins, v.major, v.minor, v.patch, datetime)
-- }
local footer = {
  type = "text",
  val = require("alpha.fortune")(),
  opts = {
    position = "center",
    width = 50,
    hl = "Comment",
    hl_shortcut = "Comment",
  },
}

local function button(sc, txt, keybind)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 5,
    width = 50,
    align_shortcut = "right",
    hl_shortcut = "Number",
    hl = "Function",
  }
  if keybind then
    opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
  end

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

local buttons = {
  type = "group",
  val = {
    button("r", "  Recently Files", ":Telescope oldfiles<CR>"),
    button("u", "  Update Packer", ":PackerSync<CR>"),
    button("f", "  Telescope", ":Telescope find_files<CR>"),
    button("p", "  Projects", ":Telescope project<CR>"),
    button("t", "  Find text", ":Telescope live_grep <CR>"),
    button("d", "  Dotfiles", ":cd ~/.dotfiles | Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 <CR>"),
    button(
      "i",
      "  IBM Projects",
      ":cd ~/dev/ibm-projects | Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 <CR>"
    ),
    button(
      "a",
      "  AIDE",
      ":cd ~/dev/ibm-projects/aide-template | Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 <CR>"
    ),
    button("D", "  Documents", ":cd ~/Documents | Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 <CR>"),
    button("b", "  Blog", ":cd ~/dev/blog | Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 <CR>"),
    button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    button("q", "  Quit NVIM", ":qa<CR>"),
  },
  opts = {
    spacing = 1,
  },
}

local section = {
  header = header,
  buttons = buttons,
  plugin_count = plugin_count,
  heading = heading,
  footer = footer,
}

local opts = {
  layout = {
    { type = "padding", val = 4 },
    section.header,
    { type = "padding", val = 2 },
    section.heading,
    section.plugin_count,
    { type = "padding", val = 2 },
    section.buttons,
    { type = "padding", val = 0 },
    section.footer,
  },
  opts = {
    margin = 5,
  },
}
alpha.setup(opts)
