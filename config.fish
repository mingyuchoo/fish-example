umask 022

set -U  EDITOR       vim
set -U  ARCHFLAGS    "-arch x86_64"


set -gx MANPATH     /usr/local/man $MANPATH
set -gx LANG        en_US.UTF-8


set -x  JAVA_HOME          "/Library/Java/JavaVirtualMachines/jdk1.8.0_261.jdk/Contents/Home"
set -x  VSCODE_PATH        "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
set -x  COURSIER           "$HOME/Library/Application Support/Coursier/bin"
set -x  ANDROID_SDK_ROOT   "$HOME/Library/Android/sdk"
set -x  NVM_DIR            "$HOME/.nvm"
set -x  NODE_PATH          "$HOME/.nvm/versions/node/v16.3.0"
set -x  GHCUP_PATH         "$HOME/.ghcup"
set -x  CABAL_PATH         "$HOME/.cabal"
set -x  CARGO_PATH         "$HOME/.cargo"


# Set global environment
set -gx PATH        $JAVA_HOME/bin $VSCODE_PATH $COURSIER $HOME/bin $HOME/.local/bin /usr/local/bin /usr/local/sbin $PATH
set -gx PATH        $ANDROID_SDK_ROOT/emulator $ANDROID_SDK_ROOT/tools $ANDROID_SDK_ROOT/platform-tools $PATH
set -gx PATH        $NVM_DIR $NODE_PATH/bin $GHCUP_PATH/bin $CABAL_PATH/bin $CARGO_PATH/bin $PATH


# For python venv
set -e _OLD_FISH_PROMPT_OVERRIDE
set -e _OLD_VIRTUAL_PYTHONHOME
set -e _OLD_VIRTUAL_PATH
source $HOME/tools/venv/bin/activate.fish
