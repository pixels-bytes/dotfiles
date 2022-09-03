--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: harpoon.lua
    Config:   https://github.com/ThePrimeagen/harpoon#-configuration
    Doc:      https://github.com/ThePrimeagen/harpoon#-harpooning
]]


local status_ok, harpoon = pcall(require, 'harpoon')
if not status_ok then
  vim.notify('Trouble with harpoon')
end

harpoon.setup()

-- keymaps
local keymap = vim.keymap.set
keymap('n', '<leader>ma', '<cmd>lua require("harpoon.mark").add_file()<cr>')
keymap('n', '<leader>mm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')
