--  ________  ________  ___  ___  ___       __   ________  ________  ___  ___
-- |\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
-- \ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
--  \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
--   \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
--    \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
--     \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|
-- 
--  Filename:   utils.lua
--  Github:     pixels and bytes here
--  Maintainer: Adam Tait
--  About:      A small set of utilities using lua in vim


local utils = {}

-- The vim.api.nvim_set_keymap() function allows you to define a new mapping.
-- Specific behaviors such as noremap must be passed as a table to that function
function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set cmd scoped {{{
function utils.opt(scope, key, value)
  local scopes = {o = vim.o, b = vim.bo, w = vim.wo}
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end
-- }}}

return utils
