--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   autocommands.lua
 About:      A small set of commands for vanilla nvim
--]]


local cmd = vim.cmd

-- highlight on yank
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

-- auto run :PackerCompile when plugins.lua is changed
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
