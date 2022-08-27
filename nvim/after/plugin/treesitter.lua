--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   treesitter.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Treesitter settings
--]]


local status_ok, ts = pcall(require, 'nvim-treesitter.configs')

if not status_ok then
  vim.notify("Trouble at mill! Treesitter having a moment")
  return
end

ts.setup {
  ensure_installed = {
    "bash",
    "c",
    "comment",
    "css",
    "fish",
    "html",
    "http",
    "javascript",
    "json",
    "lua",
    "pug",
    "python",
    "regex",
    "ruby",
    "scss",
    "sql",
    "svelte",
    "typescript",
    "vue",
    "yaml",
  },
  sync_install = false,
  ignore_install = {},
  auto_install = true,
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = {},
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  }
}
