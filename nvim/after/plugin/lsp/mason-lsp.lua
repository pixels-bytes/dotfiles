--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: lsp/mason-lsp.lua
    Config:   https://github.com/williamboman/mason-lspconfig.nvim#configuration
    Doc:      https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/mason-lspconfig.txt
]]


-- {{{ Pcalls
local mason_status_ok, masonlsp = pcall(require, "mason-lspconfig")
if not mason_status_ok then
  vim.notify('Problem with mason-lspconfig')
end

local lsp_status_ok, lspconfig = pcall(require, "lspconfig")
if not lsp_status_ok then
  vim.notify('Problem with lspconfig')
  return
end
-- }}}

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

local on_attach = function(client, bufnr)
  require('lsp.keymaps').setup(bufnr)
  require('lsp.highlighting').setup(client)
end

local capabilities = require('lsp.capabilities').create_capabilities()

local lsp_flags = {
  debounce_text_changes = 150, -- default
}

masonlsp.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      lsp_flags = lsp_flags,
    }
  end,

  -- Targeted overrides here
  ["sumneko_lua"] = require('lsp.settings.sumneko_lua').overrides(on_attach, capabilities, lsp_flags)
})

-- vim:foldmethod=marker:foldlevel=0
