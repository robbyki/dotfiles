-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/robbyk/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/robbyk/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/robbyk/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/robbyk/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/robbyk/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["better-escape.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/better-escape.nvim"
  },
  ["bullets.vim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/bullets.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-tabnine"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/cmp-vsnip"
  },
  ["completion-treesitter"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/completion-treesitter"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/harpoon"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-metals"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-metals"
  },
  ["nvim-reload"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-reload"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/octo.nvim"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["rainbow_parentheses.vim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/rainbow_parentheses.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/robbyk/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
