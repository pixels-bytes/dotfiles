--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename: persistence.lua
 Config:   https://github.com/folke/persistence.nvim#%EF%B8%8F-configuration 
--]]


local status_ok, persistence = pcall(require, 'persistence')
if not status_ok then
  vim.notify('Trouble with persistence')
end

persistence.setup()

-- Keymaps
local keymap = vim.keymap.set
keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]])
keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]])
keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]])
