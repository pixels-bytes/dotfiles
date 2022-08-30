--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   tree.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Setup nvim-tree
--]]


local status_ok, tree = pcall(require, 'nvim-tree')
if not status_ok then
  vim.notify('Problem with nvim-tree')
end

local keymap = vim.keymap.set

tree.setup({
  disable_netrw = true,
  hijack_netrw = true,
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

keymap('n', '<leader>e', ':NvimTreeToggle<cr>')
