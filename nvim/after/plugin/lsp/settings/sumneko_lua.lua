--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|


 Filename:   lsp/settings/sumneko_lua.lua
 Github:     pixels and bytes
 Maintainer: Adam Tait
 Function:   LSP Settings for Lua language
--]]


local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  vim.notify('Problem with lspconfig')
  return
end

local M = {}

M.overrides = function (on_attach, capabilities, lsp_flags)
  return function ()
    lspconfig.sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
      },
      on_attach = on_attach,
      lsp_flags = lsp_flags,
      capabilities = capabilities,
    }
  end
end

return M
