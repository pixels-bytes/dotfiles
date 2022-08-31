--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   trouble.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Trouble settings
--]]


local keymap = vim.keymap.set

local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
  vim.notify("Trouble with trouble")
end

trouble.setup{}

keymap('n', '<leader>xx', '<cmd>TroubleToggle<cr>')
keymap('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>')
keymap('n', '<leader>xd', '<cmd>Trouble document_diagnostics<cr>')
keymap('n', '<leader>xl', '<cmd>Trouble loclist<cr>')
keymap('n', '<leader>xq', '<cmd>Trouble quickfix<cr>')
keymap('n', 'gR', '<cmd>Trouble lsp_references<cr>')
