--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: marks.lua
    Config:   https://github.com/chentoast/marks.nvim#setup
    Doc:      https://github.com/chentoast/marks.nvim/blob/master/doc/marks-nvim.txt

    NOTE: All About Marks
    m{a-z} set mark at current cursor position
    m{A-Z} set global mark at current cursor position
    'a jump to line of mark a
    `a jump to cursor position of mark a
    You can d/c/y to a mark
    
    [' or [` jump to previous mark
    ]' or ]` jump to next mark
    
    `` return to last place jumped from 
    `. jump to last change in buffer
    `" jump to where last exited buffer
    `0 jump to position in last edited file (when exited nvim)
    `1 jump to penultimate poistion in last edited file.
    `2 - `9 etc...
    `[ or `] jump to beginning/end of changed or yanked text
    `< or `> jump to beginning/end of last visual selection
]]


local status_ok, marks = pcall(require, 'marks')
if not status_ok then
  vim.notify('Trouble with marks')
end

marks.setup{}
