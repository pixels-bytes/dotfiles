--  ________  ________  ___  ___  ___       __   ________  ________  ___  ___
-- |\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
-- \ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
--  \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
--   \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
--    \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
--     \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|
--
--  Filename:   init.lua
--  Github:     pixels and bytes here
--  Maintainer: Adam Tait
--  About:      Treesitter Settings


local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}
