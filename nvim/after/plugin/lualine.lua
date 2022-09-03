--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: lualine.lua
    Config:   https://github.com/nvim-lualine/lualine.nvim#usage-and-customization
    Doc:      https://github.com/nvim-lualine/lualine.nvim/blob/master/doc/lualine.txt
]]


local function pnb()
  return [[Pixels & Bytes]]
end

require('lualine').setup({
  options = {
    theme = 'nord'
  },
  sections = {
    lualine_c = { pnb, 'filename' }
  }
})
