--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: surround.lua
    Usage:    https://github.com/kylechui/nvim-surround#rocket-usage
    Config:   https://github.com/kylechui/nvim-surround#gear-configuration
    Doc:      https://github.com/kylechui/nvim-surround/blob/main/doc/nvim-surround.txt
]]


local status_ok, surround = pcall(require, 'nvim-surround')
if not status_ok then
  vim.notify('Trouble with surround')
end

surround.setup()
