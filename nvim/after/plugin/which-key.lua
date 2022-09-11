--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: which-key.lua
    Config:   https://github.com/folke/which-key.nvim#%EF%B8%8F-configuration 
    Setup:    https://github.com/folke/which-key.nvim#-setup

    TODO: Register and configure user keymaps
]]


local status_ok, wk = pcall(require, 'which-key')
if not status_ok then
  vim.notify('Trouble with which-key')
end

wk.setup {}
