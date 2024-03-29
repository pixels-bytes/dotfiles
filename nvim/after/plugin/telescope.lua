--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: telescope.lua
    Config:   https://github.com/nvim-telescope/telescope.nvim#usage
    Doc:      https://github.com/nvim-telescope/telescope.nvim/blob/master/doc/telescope.txt
]]


local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  vim.notify("Problem with Telescope")
  return
end

-- Settings {{{
telescope.setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "bottom",
    prompt_prefix = ">",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {
      -- TODO add builtin options.
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {"node_modules", "myenv", "venv"},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.75,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.cat.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_cat.new`
    grep_previewer = require'telescope.previewers'.vimgrep.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_vimgrep.new`
    qflist_previewer = require'telescope.previewers'.qflist.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_qflist.new`

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
-- }}}

-- Mappings {{{
-- Default mappings: https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua
local keymap = vim.keymap.set
keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>')
keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>')
keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>')
keymap('n', '<leader>fm', '<cmd>lua require("telescope.builtin").marks()<cr>')
keymap('n', '<leader>fc', '<cmd>lua require("telescope.builtin").colorscheme()<cr>')
keymap('n', '<leader>fq', '<cmd>lua require("telescope.builtin").quickfix()<cr>')
keymap('n', '<leader>fl', '<cmd>lua require("telescope.builtin").jumplist()<cr>')
keymap('n', '<leader>fr', '<cmd>lua require("telescope.builtin").lsp_references()<cr>')
keymap('n', '<leader>fd', '<cmd>lua require("telescope.builtin").lsp_definitions()<cr>')
-- }}}

-- Projects Extension {{{
telescope.load_extension('fzf')

telescope.load_extension('project')
keymap('n', '<leader>fp', '<cmd>lua require("telescope").extensions.project.project{change_dir = true}<cr>', {silent = true})

telescope.load_extension('file_browser')
keymap('n', '<leader>fn', '<cmd>lua require("telescope").extensions.file_browser.file_browser()<cr>', { noremap = true })

telescope.load_extension('harpoon')
keymap('n', '<leader>mt', '<cmd>Telescope harpoon marks<cr>')
-- }}}

-- vim:foldmethod=marker:foldlevel=0
