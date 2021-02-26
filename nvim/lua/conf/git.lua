--  ________  ________  ___  ___  ___       __   ________  ________  ___  ___
-- |\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
-- \ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
--  \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
--   \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
--    \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
--     \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|
-- 
--  Filename:   git.lua
--  Github:     pixels and bytes here
--  Maintainer: Adam Tait
--  About:      All the settings for git control 


local utils = require('conf/utils')
local map = utils.map

-- Fugitive
map('n', '<leader>gs', ':G<cr>')
map('n', '<leader>gb', ':Git branch<space>')
map('n', '<leader>gj', ':diffget //3<cr>')
map('n', '<leader>gr', ':diffget //2<cr>')

-- GV
map('n', '<leader>gv', ':GV<cr>')

--[[
" fugitive git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

-- map junegunn/gv
-- map git-rhubarb
--]]
