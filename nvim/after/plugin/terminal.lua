--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   terminal.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Settings for a persistant termainal
--]]


local status_ok, fterm = pcall(require, 'FTerm')
if not status_ok then
  vim.notify('Problem with FTerm')
end

local keymap = vim.keymap.set

-- Setup
local dimensions = {
  y = 0.3,
  height = 0.9,
  width = 0.9
}

fterm.setup({
  dimensions = dimensions
})

keymap('n', '<C-\\>', '<CMD>lua require("FTerm").toggle()<CR>')
keymap('t', '<C-\\>', '<c-\\><c-n><CMD>lua require("FTerm").toggle()<CR>')

-- Lazygit
local lazygit = fterm:new({
  cmd = 'lazygit',
  dimensions = dimensions
})

keymap('n', '<leader>g', function() lazygit:toggle() end)

-- Node
local node = fterm:new({
  cmd = 'node',
  dimensions = dimensions,
})

keymap('n', '<leader>tn', function() node:toggle() end)

-- ncdu
local ncdu = fterm:new({
  cmd = 'ncdu',
  dimensions = dimensions,
})

keymap('n', '<leader>tc', function() ncdu:toggle() end)

-- htop
local htop = fterm:new({
  cmd = 'htop',
  dimensions = dimensions,
})

keymap('n', '<leader>th', function() htop:toggle() end)

-- Python
local python = fterm:new({
  cmd = 'python',
  dimensions = dimensions,
})

keymap('n', '<leader>tp', function() node:toggle() end)
