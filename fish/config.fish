starship init fish | source

thefuck --alias | source
set -g direnv_fish_mode disable_arrow
direnv hook fish | source

# set theme
# setscheme gruvbox.fish
fish_config theme choose nord

set PATH $PATH /Users/abu/.local/bin
