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
 Function:   Configure LSP client according to nvim-lspconfig CONFIG.MD
--]]


local status_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
if not status_ok then
	vim.notify('Problem with nvim-lsp-installer!')
  return
end

lsp_installer.settings({
  ui = {
    icons = {
      server_installed = "",
      server_pending = "",
      server_uninstalled = "ﳛ",
    }
  }
})

lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)
