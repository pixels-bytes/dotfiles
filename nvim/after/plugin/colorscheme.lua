vim.cmd 'colorscheme default'

-- Protected call to stop crashing if colorscheme not available
local colorscheme = 'tokyonight'

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
	vim.notify('colorscheme ' .. colorscheme .. ' not found!')
	return
end
