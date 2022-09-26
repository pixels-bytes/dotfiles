starship init fish | source

thefuck --alias | source
set -g direnv_fish_mode disable_arrow
set -gx EDITOR hx
direnv hook fish | source

# set theme
# setscheme gruvbox.fish
# setscheme catppuccin.fish
# fish_config theme choose nord
fish_config theme choose Dracula

set PATH $PATH /Users/abu/.local/bin
