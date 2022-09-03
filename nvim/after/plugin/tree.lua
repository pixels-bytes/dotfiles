--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: tree.lua
    Setup:    https://github.com/kyazdani42/nvim-tree.lua#setup
    Doc:      https://github.com/kyazdani42/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

     TODO: Read through docs for config
     FIX: Performance issue opening and closing nvim-tree
]]


local status_ok, tree = pcall(require, 'nvim-tree')
if not status_ok then
  vim.notify('Problem with nvim-tree')
end

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

-- Keymaps
local keymap = vim.keymap.set
keymap('n', '<leader>e', ':NvimTreeToggle<cr>')
