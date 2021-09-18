umask 022

set -gx EDITOR      vim
set -gx MANPATH     /usr/local/man $MANPATH
set -gx LANG        en_US.UTF-8


set -x  NVM_DIR            "$HOME/.nvm"
set -x  NODE_PATH          "$HOME/.nvm/versions/node/v16.9.1"
set -x  GHCUP_PATH         "$HOME/.ghcup"
set -x  CABAL_PATH         "$HOME/.cabal"
set -x  CARGO_PATH         "$HOME/.cargo"


# Set global environment
set -gx PATH        $HOME/bin $HOME/.local/bin /usr/local/bin /usr/local/sbin $PATH
set -gx PATH        $NVM_DIR $NODE_PATH/bin $GHCUP_PATH/bin $CABAL_PATH/bin $CARGO_PATH/bin $PATH


# For python venv
set -e _OLD_FISH_PROMPT_OVERRIDE
set -e _OLD_VIRTUAL_PYTHONHOME
set -e _OLD_VIRTUAL_PATH
source $HOME/tools/venv/bin/activate.fish

