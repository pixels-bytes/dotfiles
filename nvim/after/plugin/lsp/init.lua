--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|


 Filename:   lsp/init.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 Function:   Entry point for lsp settings
--]]

--[[
Todo: Setup KindIcons in completion.lua
Todo: Setup DAP
Todo: Configure json schemas: https://github.com/neovim/nvim-lspconfig/wiki/User-contributed-tips
Todo: Rewatch https://www.youtube.com/watch?v=6F3ONwrCxMg&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=8 for more todos
--]]


-- Use this file to require all the M functions and run setup()
local status_ok, _ = pcall(require, "lspconfig")
  if not status_ok then
	  vim.notify('Problem with lspconfig')
    return
end
