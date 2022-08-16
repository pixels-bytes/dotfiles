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
local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  vim.notify('Problem with mason')
end

local masonlsp_status_ok, masonlsp = pcall(require, "mason-lspconfig")
if not masonlsp_status_ok then
  vim.notify('Problem with mason-lspconfig')
end

local lsp_status_ok, lspconfig = pcall(require, "lspconfig")
if not lsp_status_ok then
  vim.notify('Problem with lspconfig')
  return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

masonlsp.setup({
  ensure_installed = {
    "clangd",
    "cssls",
    "eslint",
    "html",
    "jsonls",
    "pyright",
    "sqlls",
    "sumneko_lua",
    "svelte",
    "tailwindcss",
    "tsserver",
    "vuels",
  }
})

require("mason-lspconfig").setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup {
--      on_attach = require("shared").on_attach,
    }
  end,

  -- Targeted overrides here
  ["sumneko_lua"] = function ()
    lspconfig.sumneko_lua.setup {
      settings = require('lsp/sumneko_lua')
    }
  end
})
